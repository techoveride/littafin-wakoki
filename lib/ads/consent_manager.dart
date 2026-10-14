import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import 'ad_helper.dart';

/// Gathers ad consent with Google's User Messaging Platform (UMP) before any
/// ad is requested, as required for users in the EEA, UK and Switzerland, and
/// exposes the privacy options form those users must be able to reopen.
///
/// The consent message itself is configured in AdMob under
/// Privacy & messaging. Outside regions that need consent, no form is shown.
class ConsentManager extends ChangeNotifier {
  static final ConsentManager instance = ConsentManager._();
  ConsentManager._();

  bool _canRequestAds = false;
  bool _isPrivacyOptionsRequired = false;
  bool _isMobileAdsInitialized = false;

  /// Whether ads may be requested under the user's consent choices.
  bool get canRequestAds => _canRequestAds;

  /// Whether a "Privacy settings" entry must be shown so the user can change
  /// their consent choices.
  bool get isPrivacyOptionsRequired => _isPrivacyOptionsRequired;

  /// Updates consent info, shows the consent form if required, then
  /// initializes the Mobile Ads SDK once ads may be requested.
  Future<void> gatherConsent() async {
    if (!AdHelper.isSupportedPlatform) return;

    final updated = Completer<void>();
    try {
      ConsentInformation.instance.requestConsentInfoUpdate(
        ConsentRequestParameters(),
        () async {
          try {
            await ConsentForm.loadAndShowConsentFormIfRequired((FormError? error) {
              if (error != null) {
                debugPrint("Consent form error: ${error.message}");
              }
            });
          } finally {
            if (!updated.isCompleted) updated.complete();
          }
        },
        (FormError error) {
          // Offline or misconfigured: fall back to the consent stored from
          // a previous session.
          debugPrint("Consent info update failed: ${error.message}");
          if (!updated.isCompleted) updated.complete();
        },
      );
      await updated.future;
    } catch (e) {
      debugPrint("Consent gathering error: $e");
    }
    await _refresh();
  }

  /// Reopens the consent form so the user can change their choices.
  Future<void> showPrivacyOptionsForm() async {
    try {
      await ConsentForm.showPrivacyOptionsForm((FormError? error) {
        if (error != null) {
          debugPrint("Privacy options form error: ${error.message}");
        }
      });
    } catch (e) {
      debugPrint("Privacy options form error: $e");
    }
    await _refresh();
  }

  Future<void> _refresh() async {
    try {
      _canRequestAds = await ConsentInformation.instance.canRequestAds();
      _isPrivacyOptionsRequired =
          await ConsentInformation.instance.getPrivacyOptionsRequirementStatus() ==
              PrivacyOptionsRequirementStatus.required;
      if (_canRequestAds && !_isMobileAdsInitialized) {
        _isMobileAdsInitialized = true;
        await MobileAds.instance.initialize();
      }
    } catch (e) {
      debugPrint("Consent state refresh error: $e");
    }
    notifyListeners();
  }
}
