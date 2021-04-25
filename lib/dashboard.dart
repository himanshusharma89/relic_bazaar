import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:provider/provider.dart';
import 'package:relic_bazaar/views/cart_view.dart';
import 'package:relic_bazaar/views/home_view.dart';
import 'package:relic_bazaar/views/search_view.dart';
import 'helpers/ad_state.dart';
import 'views/profile/profile_view.dart';
import 'widgets/bottom_nav_bar.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  PageController _pageController;
  int _currentIndex = 0;

  BannerAd bannerAd;

  @override
  void didChangeDependencies() {
    final AdState adState = Provider.of<AdState>(context);

    adState.initialization.then(
      (InitializationStatus status) => setState(
        () => bannerAd = BannerAd(
          // adUnitId: adState.bannerAdUnitId,
          adUnitId: BannerAd.testAdUnitId,
          size: AdSize.banner,
          request: const AdRequest(),
          listener: adState.adListener,
        )..load(),
      ),
    );
    super.didChangeDependencies();
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            PageView(
              controller: _pageController,
              onPageChanged: (int index) {
                setState(() {
                  _currentIndex = index;
                });
              },
              children: <Widget>[
                Home(
                  pageController: _pageController,
                ),
                Search(),
                Cart(
                  pageController: _pageController,
                ),
                ProfilePage(),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  if (bannerAd != null)
                    SizedBox(
                      height: 50,
                      child: AdWidget(ad: bannerAd),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: FloatingNavBar(_currentIndex, _pageController),
    );
  }
}
