import 'dart:convert';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:littafin_wakoki/model/db_helper.dart';
import 'package:littafin_wakoki/model/hymn.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SyncResult {
  final bool success;
  final int updatedCount;
  final int currentVersion;
  final String message;

  SyncResult({
    required this.success,
    required this.updatedCount,
    required this.currentVersion,
    required this.message,
  });
}

class HymnSyncService {
  static const String prefLastSyncTime = "wakoki_last_sync_timestamp";
  static const String prefSyncVersion = "wakoki_data_sync_version";
  static const String legacyPrefSyncVersion = "hymn_data_sync_version";

  // Remote Config parameter keys (supports both wakoki-specific and generic keys)
  static const String rcWakokiVersionKey = "wakoki_catalog_version";
  static const String rcWakokiUpdatesUrlKey = "wakoki_updates_url";
  static const String rcLegacyVersionKey = "hymn_catalog_version";
  static const String rcLegacyUpdatesUrlKey = "hymn_updates_url";

  // Default fallback URL if Remote Config key is empty (empty by default for security)
  static const String fallbackSyncEndpoint = "https://hymnestry.techoveridehub.com/wakoki_updates.json";

  final DatabaseHelper _dbHelper = DatabaseHelper();

  /// Gets the local synced version from SharedPreferences (defaults to 1)
  Future<int> getLocalSyncVersion() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getInt(prefSyncVersion) ??
        prefs.getInt(legacyPrefSyncVersion) ??
        1;
  }

  /// Checks for and applies remote hymn updates via Firebase Remote Config
  Future<SyncResult> syncRemoteHymns({bool forceSync = false, String? directUrl}) async {
    final prefs = await SharedPreferences.getInstance();
    final int localVersion = prefs.getInt(prefSyncVersion) ??
        prefs.getInt(legacyPrefSyncVersion) ??
        1;

    if (kIsWeb) {
      return SyncResult(
        success: true,
        updatedCount: 0,
        currentVersion: localVersion,
        message: "Hymns are up to date on web.",
      );
    }

    int targetVersion = localVersion;
    String targetUrl = directUrl ?? fallbackSyncEndpoint;

    // 1. Fetch parameters from Firebase Remote Config if not using a direct URL and Firebase is initialized
    if (directUrl == null && Firebase.apps.isNotEmpty) {
      try {
        final remoteConfig = FirebaseRemoteConfig.instance;
        await remoteConfig.setConfigSettings(RemoteConfigSettings(
          fetchTimeout: const Duration(seconds: 10),
          minimumFetchInterval: Duration.zero,
        ));
        await remoteConfig.fetchAndActivate();

        // Check wakoki_catalog_version first, then legacy hymn_catalog_version
        int rcVersion = remoteConfig.getInt(rcWakokiVersionKey);
        if (rcVersion <= 0) {
          rcVersion = remoteConfig.getInt(rcLegacyVersionKey);
        }

        // Check wakoki_updates_url first, then legacy hymn_updates_url
        String rcUrl = remoteConfig.getString(rcWakokiUpdatesUrlKey).trim();
        if (rcUrl.isEmpty) {
          rcUrl = remoteConfig.getString(rcLegacyUpdatesUrlKey).trim();
        }

        debugPrint(
            "Remote Config fetch result: catalog_version = $rcVersion, updates_url = '$rcUrl'");

        if (rcVersion > 0) {
          targetVersion = rcVersion;
        }
        if (rcUrl.isNotEmpty) {
          targetUrl = rcUrl;
        }
      } catch (e) {
        debugPrint("Remote Config fetch warning: $e");
      }
    }

    if (targetUrl.isEmpty) {
      return SyncResult(
        success: true,
        updatedCount: 0,
        currentVersion: localVersion,
        message: "No remote update URL configured.",
      );
    }

    // 2. Check if an update is actually needed (skip network download if already on latest version)
    if (!forceSync && targetVersion <= localVersion) {
      return SyncResult(
        success: true,
        updatedCount: 0,
        currentVersion: localVersion,
        message: "Littafin Waƙoƙi is up to date (Version $localVersion).",
      );
    }

    // 3. Fetch the update manifest JSON
    try {
      final uri = Uri.parse(targetUrl);
      final response = await http.get(uri).timeout(
        const Duration(seconds: 12),
        onTimeout: () => http.Response('{"error": "timeout"}', 408),
      );

      if (response.statusCode == 200) {
        final dynamic decoded = json.decode(response.body);

        List<dynamic> hymnListJson = [];
        int? incomingManifestVersion;

        if (decoded is List) {
          hymnListJson = decoded;
        } else if (decoded is Map<String, dynamic>) {
          // Safety guard: ensure the manifest is for wakoki, not sss
          final appId = decoded['app_id']?.toString().toLowerCase();
          if (appId != null && appId != 'wakoki' && appId != 'lw') {
            debugPrint("Warning: Manifest app_id is '$appId', expected 'wakoki'. Aborting sync.");
            return SyncResult(
              success: false,
              updatedCount: 0,
              currentVersion: localVersion,
              message: "Manifest app mismatch: Expected Littafin Waƙoƙi but found '$appId'.",
            );
          }
          incomingManifestVersion = decoded['manifest_version'] is int ? decoded['manifest_version'] : null;
          if (decoded['hymns'] is List) {
            hymnListJson = decoded['hymns'];
          }
        }

        if (hymnListJson.isEmpty) {
          return SyncResult(
            success: true,
            updatedCount: 0,
            currentVersion: localVersion,
            message: "No new hymns found in update manifest.",
          );
        }

        final List<Hymns> incomingHymns = hymnListJson.map((item) {
          if (item is Map<String, dynamic>) {
            return Hymns.fromJson(item);
          } else {
            return Hymns.fromJson(Map<String, dynamic>.from(item));
          }
        }).toList();

        // 4. Batch upsert into SQLite safely
        final count = await _dbHelper.batchUpsertOfficialHymns(incomingHymns);

        final newVersion = incomingManifestVersion ?? targetVersion;
        await prefs.setInt(prefLastSyncTime, DateTime.now().millisecondsSinceEpoch);
        await prefs.setInt(prefSyncVersion, newVersion);

        return SyncResult(
          success: true,
          updatedCount: count,
          currentVersion: newVersion,
          message: count > 0
              ? "Successfully updated $count hymns (Catalog Version $newVersion)!"
              : "Hymns verified. All hymns are up to date.",
        );
      } else {
        return SyncResult(
          success: false,
          updatedCount: 0,
          currentVersion: localVersion,
          message: "Update server responded with HTTP status ${response.statusCode}",
        );
      }
    } catch (e) {
      debugPrint("Remote hymn sync error: $e");
      return SyncResult(
        success: false,
        updatedCount: 0,
        currentVersion: localVersion,
        message: "Unable to check for hymn updates: Network unavailable",
      );
    }
  }

  /// Returns the last sync timestamp
  Future<DateTime?> getLastSyncDate() async {
    final prefs = await SharedPreferences.getInstance();
    final ms = prefs.getInt(prefLastSyncTime);
    if (ms == null) return null;
    return DateTime.fromMillisecondsSinceEpoch(ms);
  }
}

