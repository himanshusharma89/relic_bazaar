//Packages
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
//Files
import '../../../helpers/constants.dart';
import '../../../widgets/retro_button.dart';

class GithubWebView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: RelicColors.backgroundColor,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const RelicBazaarStackedView(
              upperColor: Colors.white,
              width: 35,
              height: 35,
              borderColor: Colors.white,
              child: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
            ),
          ),
        ),
        title: const Text('Github Repository'),
        elevation: 0.0,
      ),
      body: const WebView(
        initialUrl: 'https://github.com/himanshusharma89/relic_bazaar',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
