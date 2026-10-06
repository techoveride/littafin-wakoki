import 'dart:io';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'hymn.dart';
import 'hymn_list.dart';

// Backward compatibility class for legacy code referencing AudioPlayerState
class AudioPlayerState {
  static const PlayerState PLAYING = PlayerState.playing;
  static const PlayerState PAUSED = PlayerState.paused;
  static const PlayerState STOPPED = PlayerState.stopped;
  static const PlayerState COMPLETED = PlayerState.completed;
}

// Global variables
double fontSize = 18.0;
Color bgColor = Colors.transparent;
Color txtColor = Colors.black;
double lineSp = 1.2;
bool nightMode = false;
IconData tuneIcon = play;
IconData play = Icons.play_circle_outline;
IconData pause = Icons.pause_circle_outline;
IconData stop = Icons.stop;
ThemeData themeMode = defaultTheme();

// WebView State
bool isLoaded = false;

// Remote config variables
String app_update = "";
String app_version = "";
String more_apps = 'https://play.google.com/store/apps/dev?id=8322602405382603508';
String share_app = 'https://hymnestry.techoveride.com/';
String APP_STORE_URL =
    'https://phobos.apple.com/WebObjects/MZStore.woa/wa/viewSoftwareUpdate?id=com.hymnestry.littafin_wakoki&mt=8';
String PLAY_STORE_URL =
    'https://play.google.com/store/apps/details?id=com.hymnestry.littafin_wakoki';
String PREMIUM_APP_STORE_URL =
    'https://phobos.apple.com/WebObjects/MZStore.woa/wa/viewSoftwareUpdate?id=com.hymnestry.littafin_wakoki_pro&mt=8';
String PREMIUM_PLAY_STORE_URL =
    'https://play.google.com/store/apps/details?id=com.hymnestry.littafin_wakoki_pro';
String PRIVACY_POLICY_URL = 'https://hymnestry.techoveride.com/privacy-policy/';
String TERMS_OF_USE_URL = 'https://www.apple.com/legal/internet-services/itunes/dev/stdeula/';

late List<Hymns> defaultHymn;
const fileName = "HymnLyricsHausa_v1.json";

double _subheadFont = 16.0;
double _titleFontSize = 30.0;

class AppThemeOption {
  final String key;
  final String name;
  final String description;
  final Color primaryColor;
  final Color accentColor;
  final ThemeData themeData;

  const AppThemeOption({
    required this.key,
    required this.name,
    required this.description,
    required this.primaryColor,
    required this.accentColor,
    required this.themeData,
  });
}

// Curated App Themes
List<AppThemeOption> get availableThemes => appThemes;

final List<AppThemeOption> appThemes = [
  AppThemeOption(
    key: "emerald",
    name: "Emerald Green",
    description: "Classic Hausa hymnal forest green",
    primaryColor: const Color(0xFF2E7D32),
    accentColor: const Color(0xFF81C784),
    themeData: ThemeData(
      useMaterial3: false,
      primarySwatch: Colors.green,
      primaryColor: const Color(0xFF2E7D32),
      indicatorColor: const Color(0xFF81C784),
      splashColor: const Color(0xFF81C784),
      colorScheme: ColorScheme.fromSwatch(
        primarySwatch: Colors.green,
        accentColor: const Color(0xFF81C784),
      ).copyWith(secondary: const Color(0xFF81C784)),
    ),
  ),
  AppThemeOption(
    key: "classic_blue",
    name: "Sapphire Blue",
    description: "Serene traditional church hymnal blue",
    primaryColor: const Color(0xFF1565C0),
    accentColor: const Color(0xFF64B5F6),
    themeData: ThemeData(
      useMaterial3: false,
      primarySwatch: Colors.blue,
      primaryColor: const Color(0xFF1565C0),
      indicatorColor: const Color(0xFF64B5F6),
      splashColor: const Color(0xFF64B5F6),
      colorScheme: ColorScheme.fromSwatch(
        primarySwatch: Colors.blue,
        accentColor: const Color(0xFF64B5F6),
      ).copyWith(secondary: const Color(0xFF64B5F6)),
    ),
  ),
  AppThemeOption(
    key: "royal_purple",
    name: "Royal Purple",
    description: "Majestic imperial liturgical purple",
    primaryColor: const Color(0xFF6A1B9A),
    accentColor: const Color(0xFFBA68C8),
    themeData: ThemeData(
      useMaterial3: false,
      primarySwatch: Colors.purple,
      primaryColor: const Color(0xFF6A1B9A),
      indicatorColor: const Color(0xFFBA68C8),
      splashColor: const Color(0xFFBA68C8),
      colorScheme: ColorScheme.fromSwatch(
        primarySwatch: Colors.purple,
        accentColor: const Color(0xFFBA68C8),
      ).copyWith(secondary: const Color(0xFFBA68C8)),
    ),
  ),
  AppThemeOption(
    key: "crimson",
    name: "Crimson Ruby",
    description: "Vibrant rich scarlet velvet",
    primaryColor: const Color(0xFFC62828),
    accentColor: const Color(0xFFEF9A9A),
    themeData: ThemeData(
      useMaterial3: false,
      primarySwatch: Colors.red,
      primaryColor: const Color(0xFFC62828),
      indicatorColor: const Color(0xFFEF9A9A),
      splashColor: const Color(0xFFEF9A9A),
      colorScheme: ColorScheme.fromSwatch(
        primarySwatch: Colors.red,
        accentColor: const Color(0xFFEF9A9A),
      ).copyWith(secondary: const Color(0xFFEF9A9A)),
    ),
  ),
  AppThemeOption(
    key: "teal",
    name: "Ocean Teal",
    description: "Calm refreshing coastal teal",
    primaryColor: const Color(0xFF00695C),
    accentColor: const Color(0xFF4DB6AC),
    themeData: ThemeData(
      useMaterial3: false,
      primarySwatch: Colors.teal,
      primaryColor: const Color(0xFF00695C),
      indicatorColor: const Color(0xFF4DB6AC),
      splashColor: const Color(0xFF4DB6AC),
      colorScheme: ColorScheme.fromSwatch(
        primarySwatch: Colors.teal,
        accentColor: const Color(0xFF4DB6AC),
      ).copyWith(secondary: const Color(0xFF4DB6AC)),
    ),
  ),
];

String currentThemeKey = "emerald";

ThemeData getActiveTheme() {
  if (nightMode) {
    return ThemeData.dark().copyWith(
      indicatorColor: Colors.amberAccent,
      colorScheme: const ColorScheme.dark(
        primary: Colors.amberAccent,
        secondary: Colors.amberAccent,
      ),
    );
  }
  final found = appThemes.firstWhere(
    (t) => t.key == currentThemeKey,
    orElse: () => appThemes.first,
  );
  return found.themeData;
}

final ValueNotifier<ThemeData> appThemeNotifier = ValueNotifier(getActiveTheme());

Future<void> setAppTheme(String key) => setThemeKey(key);

Future<void> setThemeKey(String key) async {
  currentThemeKey = key;
  appThemeNotifier.value = getActiveTheme();
  final prefs = await SharedPreferences.getInstance();
  await prefs.setString("appTheme", key);
}

Future<void> setNightMode(bool isNight) async {
  nightMode = isNight;
  appThemeNotifier.value = getActiveTheme();
  final prefs = await SharedPreferences.getInstance();
  await prefs.setBool("nightMode", isNight);
}

ThemeData defaultTheme() => getActiveTheme();

TextStyle titleStyle() {
  return TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: _titleFontSize,
    color: nightMode == false ? txtColor : Colors.white,
  );
}

TextStyle subheadStyle() {
  return TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: _subheadFont,
    color: nightMode == false ? txtColor : Colors.white,
  );
}

TextStyle lyricStyle() {
  return TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: fontSize,
    height: lineSp,
    color: nightMode == false ? txtColor : Colors.white,
  );
}

AudioPlayer player = AudioPlayer();
PlayerState playerState = PlayerState.stopped;

bool get isPlaying => playerState == PlayerState.playing;
bool get isPaused => playerState == PlayerState.paused;

Future<void> stopAudio() async {
  try {
    await player.stop();
  } catch (e) {
    debugPrint("Error stopping audio: $e");
  }
  mp3Uri = '';
  tuneIcon = play;
  playerState = PlayerState.stopped;
}

String mp3Uri = "";
bool fileExists = false;
bool isRemoteTune = false;
bool isTuneCached = false;
int currentHymnIdForTune = 0;

Future<void> load(String song, {String? tuneSource, int? hymnId}) async {
  currentHymnIdForTune = hymnId ?? int.tryParse(song) ?? 0;
  final cleanTune = tuneSource?.trim() ?? '';

  if (cleanTune.startsWith('http://') || cleanTune.startsWith('https://')) {
    isRemoteTune = true;
    isTuneCached = false;
    mp3Uri = cleanTune;
    fileExists = false;
    return;
  }

  isRemoteTune = false;
  isTuneCached = true;

  String songBuf;
  String buffer = song.contains('-')
      ? song.substring(0, song.indexOf('-')).trim().toLowerCase()
      : song.trim().toLowerCase();

  if (buffer.startsWith('y')) {
    String numPart = buffer.replaceAll(RegExp(r'[^0-9]'), '');
    songBuf = "y$numPart";
  } else {
    String numPart = buffer.replaceAll(RegExp(r'[^0-9]'), '');
    songBuf = numPart.isNotEmpty ? int.parse(numPart).toString() : buffer;
  }

  String output = 'aud_0.mp3';
  for (var val in tunes) {
    int startIdx = val.indexOf('_');
    int endIdx = val.indexOf('.');
    if (startIdx != -1 && endIdx != -1 && endIdx > startIdx) {
      String r = val.substring(startIdx + 1, endIdx).trim();
      if (songBuf.toLowerCase() == r.toLowerCase()) {
        output = val;
        break;
      }
    }
  }

  final dir = await getApplicationDocumentsDirectory();
  final file = File('${dir.path}/$output');
  fileExists = file.existsSync();
  if (fileExists) {
    mp3Uri = file.path;
  } else {
    try {
      final ByteData data = await rootBundle.load('tunes/$output');
      await file.writeAsBytes(data.buffer.asUint8List(), flush: true);
      mp3Uri = file.path;
    } catch (e) {
      debugPrint("Asset tune load notice: $e");
      mp3Uri = '';
    }
  }
}

Future<void> playSound({VoidCallback? onStreamingStarted, Function(String message)? onOfflineNotification}) async {
  if (mp3Uri.isEmpty) return;
  if (isRemoteTune && !isTuneCached) {
    await player.play(UrlSource(mp3Uri));
  } else {
    await player.play(DeviceFileSource(mp3Uri));
  }
}

Future<void> pauseSound() async {
  await player.pause();
}
