//Packages
import 'package:flutter/material.dart';
import 'package:relic_bazaar/widgets/back_button.dart';
import 'package:webview_flutter/webview_flutter.dart';

//Files
import '../../../helpers/constants.dart';

class GithubWebView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: RelicColors.backgroundColor,
        leading: appBarBackButton(context),
        centerTitle: true,
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
