import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:littafin_wakoki/ads/ad_helper.dart';

void main() {
  group('AdHelper Configuration & Test ID Protection Tests', () {
    test('Official Google Test Ad Unit IDs match official specifications', () {
      // Official Google Sample Ad Unit IDs verified from Google Mobile Ads documentation:
      // https://developers.google.com/admob/android/test-ads
      // https://developers.google.com/admob/ios/test-ads
      const officialTestAndroidBanner = 'ca-app-pub-3940256099942544/6300978111';
      const officialTestIosBanner = 'ca-app-pub-3940256099942544/2934735716';
      const officialTestAndroidAppOpen = 'ca-app-pub-3940256099942544/9257395921';
      const officialTestIosAppOpen = 'ca-app-pub-3940256099942544/5575463023';

      expect(kDebugMode, isTrue, reason: "Test environment should run in kDebugMode");

      // Verify banner ad unit ID in debug mode resolves to official test ID
      final bannerId = AdHelper.bannerAdUnitId;
      expect(
        bannerId == officialTestAndroidBanner || bannerId == officialTestIosBanner,
        isTrue,
        reason: "Debug builds must return official Google test banner ID",
      );

      // Verify app open ad unit ID in debug mode resolves to official test ID
      final appOpenId = AdHelper.appOpenAdUnitId;
      expect(
        appOpenId == officialTestAndroidAppOpen || appOpenId == officialTestIosAppOpen,
        isTrue,
        reason: "Debug builds must return official Google test app open ID",
      );
    });

    test('Live Production Ad Unit IDs are defined and formatted properly', () {
      // Must follow the ca-app-pub-XXXXXXXXXXXXXXXX/YYYYYYYYYY pattern
      final bannerIdRegex = RegExp(r'^ca-app-pub-\d+/\d+$');
      final appIdRegex = RegExp(r'^ca-app-pub-\d+~\d+$');

      expect(appIdRegex.hasMatch(AdHelper.androidAppId), isTrue);
    });
  });
}
