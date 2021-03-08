import 'dart:async';
import 'package:flutter/material.dart';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:retro_shopping/helpers/slide_route.dart';
import 'package:retro_shopping/widgets/product/product_page.dart';

class Splash extends StatefulWidget {
  final bool initLink;
  Splash({this.initLink});
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    startTime();
    _initLink();
  }

  @override
  void dispose() {
    super.dispose();
  }

  Future initDynamicLinks() async {
    final PendingDynamicLinkData data =
        await FirebaseDynamicLinks.instance.getInitialLink();

    await _handleDeepLink(data);

    // Register a link callback to fire if the app is opened up from the background
    // using a dynamic link.
    FirebaseDynamicLinks.instance.onLink(
        onSuccess: (PendingDynamicLinkData dynamicLink) async {
      // handle link that has been retrieved
      await _handleDeepLink(dynamicLink);
    }, onError: (OnLinkErrorException e) async {
      print('Link Failed: ${e.message}');
    });
  }

  Future<void> _handleDeepLink(PendingDynamicLinkData data) async {
    final Uri deepLink = data?.link;
    if (deepLink != null) {
      if (deepLink.queryParameters['isProduct'] == 'true') {
        Navigator.push(
            context,
            SlideBottomRoute(
                page: ProductPage(
              text: deepLink.queryParameters['text'],
              owner: deepLink.queryParameters['owner'],
              image: deepLink.queryParameters['image'],
              prodHeight: int.tryParse(deepLink.queryParameters['height']),
              seller: deepLink.queryParameters['seller'],
              amount: deepLink.queryParameters['amount'],
            )));
      }
    }
  }

  _initLink() {
    Future.delayed(
      Duration(milliseconds: 300),
      () async {
        if (widget.initLink) await initDynamicLinks();
      },
    );
  }

  startTime() async {
    var _duration = new Duration(seconds: 3);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed('/dashboard');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/splash.png',
                  ))),
          child: Stack(
            children: [
              Positioned(
                top: MediaQuery.of(context).size.height * 0.85,
                left: MediaQuery.of(context).size.width * 0.47,
                child: Container(
                  height: 35,
                  width: 35,
                  child: CircularProgressIndicator(
                    valueColor: new AlwaysStoppedAnimation<Color>(Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
