import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import '../state/purchase_notifier.dart';
import 'ad_helper.dart';

class AnchoredAdaptiveAd extends StatefulWidget {
  const AnchoredAdaptiveAd({Key? key}) : super(key: key);

  @override
  State<AnchoredAdaptiveAd> createState() => _AnchoredAdaptiveAdState();
}

class _AnchoredAdaptiveAdState extends State<AnchoredAdaptiveAd> {
  BannerAd? _anchoredAdaptiveAd;
  bool _isLoaded = false;
  double adHeight = 0.0;

  /// Width of the space the banner sits in (e.g. the hymn pane on tablets),
  /// which can be narrower than the screen.
  double? _availableWidth;

  void closeBanner() {
    if (_isLoaded) {
      _anchoredAdaptiveAd?.dispose();
    }
  }

  @override
  void dispose() {
    _anchoredAdaptiveAd?.dispose();
    super.dispose();
  }

  /// Load another ad, disposing of the current ad if there is one.
  Future<void> _loadAd() async {
    final isMobile = !kIsWeb && (Platform.isAndroid || Platform.isIOS);
    if (!isMobile || PurchaseNotifier.instance.isPro) {
      await _anchoredAdaptiveAd?.dispose();
      if (mounted) {
        setState(() {
          _anchoredAdaptiveAd = null;
          _isLoaded = false;
        });
      }
      return;
    }

    await _anchoredAdaptiveAd?.dispose();
    if (!mounted) return;
    setState(() {
      _anchoredAdaptiveAd = null;
      _isLoaded = false;
    });

    final AnchoredAdaptiveBannerAdSize? size =
        await AdSize.getCurrentOrientationAnchoredAdaptiveBannerAdSize(
            (_availableWidth ?? MediaQuery.of(context).size.width).truncate());

    if (!mounted) return;
    if (size == null) {
      debugPrint('Unable to get height of anchored banner.');
      return;
    }

    _anchoredAdaptiveAd = BannerAd(
      adUnitId: AdHelper.bannerAdUnitId,
      size: size,
      request: const AdRequest(nonPersonalizedAds: true),
      listener: BannerAdListener(
        onAdLoaded: (Ad ad) {
          if (kDebugMode) {
            print('$ad loaded: ${ad.responseInfo}');
          }
          if (!mounted) {
            ad.dispose();
            return;
          }
          setState(() {
            // When the ad is loaded, get the ad size and use it to set
            // the height of the ad container.
            _anchoredAdaptiveAd = ad as BannerAd;
            _isLoaded = true;
            adHeight = _anchoredAdaptiveAd!.size.height.toDouble();
          });
        },
        onAdFailedToLoad: (Ad ad, LoadAdError error) {
          debugPrint('Anchored adaptive banner failedToLoad: $error');
          ad.dispose();
        },
      ),
    );
    return _anchoredAdaptiveAd!.load();
  }

  @override
  Widget build(BuildContext context) {
    final isMobile = !kIsWeb && (Platform.isAndroid || Platform.isIOS);
    if (!isMobile) {
      return const SizedBox.shrink();
    }

    return LayoutBuilder(
      builder: (context, constraints) {
        // Load (or reload after rotation/resizing) for the width actually available.
        final width = constraints.maxWidth;
        if (width.isFinite && width != _availableWidth) {
          _availableWidth = width;
          WidgetsBinding.instance.addPostFrameCallback((_) {
            if (mounted) _loadAd();
          });
        }
        return ListenableBuilder(
          listenable: PurchaseNotifier.instance,
          builder: (context, _) {
            final ad = _anchoredAdaptiveAd;
            if (PurchaseNotifier.instance.isPro || !_isLoaded || ad == null) {
              return const SizedBox.shrink();
            }
            return SizedBox(
              height: adHeight + 4,
              child: Center(
                child: SizedBox(
                  width: ad.size.width.toDouble(),
                  height: ad.size.height.toDouble(),
                  child: AdWidget(ad: ad),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
