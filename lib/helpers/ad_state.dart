import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class AdState {
  AdState(this.initialization);
  Future<InitializationStatus> initialization;

  // String get bannerAdUnitId => Platform.isAndroid?'ca-app-pub-1408860275796619~7877036507':'';
  String get bannerAdUnitId => 'ca-app-pub-3940256099942544/6300978111';

  BannerAdListener get adListener => _adListener;

  final BannerAdListener _adListener = BannerAdListener(
    onAdLoaded: (Ad ad) => debugPrint('Ad loaded: ${ad.adUnitId}'),
    onAdClosed: (Ad ad) => debugPrint('Ad closed: ${ad.adUnitId}'),
    onAdFailedToLoad: (Ad ad, LoadAdError error) => debugPrint('Ad failed: ${ad.adUnitId}, $error'),
    onAdOpened: (Ad ad) => debugPrint('Ad opener: ${ad.adUnitId}'),
  );
}
