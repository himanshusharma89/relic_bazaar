import 'dart:async';
import 'package:flutter/material.dart';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:retro_shopping/helpers/slide_route.dart';
import 'package:retro_shopping/widgets/product/product_page.dart';
import 'package:firebase_core/firebase_core.dart';

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
    _initLink();
  }

  @override
  void dispose() {
    super.dispose();
  }

  Future initDynamicLinks() async {
    final PendingDynamicLinkData data =
        await FirebaseDynamicLinks.instance.getInitialLink();
    if (data == null) {
      Navigator.of(context).pushReplacementNamed('/dashboard');
    }

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
        Navigator.of(context).pushReplacementNamed('/dashboard');
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) => ProductPage(
                      text: deepLink.queryParameters['text'],
                      owner: deepLink.queryParameters['owner'],
                      image: deepLink.queryParameters['image'],
                      prodHeight:
                          int.tryParse(deepLink.queryParameters['height']),
                      seller: deepLink.queryParameters['seller'],
                      amount: deepLink.queryParameters['amount'],
                    )));
      }
    }
  }

  _initLink() async {
    Future.delayed(
      Duration(milliseconds: 300),
      () async {
        if (widget.initLink)
          await initDynamicLinks();
        else {
          Navigator.of(context).pushReplacementNamed('/dashboard');
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/splash.png',
                  ))),
          child: Stack(
            children: <Widget>[
              Positioned(
                top: MediaQuery.of(context).size.height * 0.85,
                left: MediaQuery.of(context).size.width * 0.47,
                child: const SizedBox(
                  height: 35,
                  width: 35,
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
