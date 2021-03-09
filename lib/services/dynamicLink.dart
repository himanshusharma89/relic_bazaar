import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:flutter/material.dart';

class DynamicLinkService {
  static Future<Uri> createDynamicLink(
      {int height,
      String text,
      String owner,
      String image,
      String seller,
      String amount,
      bool isProduct = false}) async {
    final DynamicLinkParameters parameters = DynamicLinkParameters(
      uriPrefix: 'https://relicbazaar.page.link',
      // text: text,
      // owner: owner,
      // image: image,
      // prodHeight: height,
      // seller: seller,
      // amount: amount,
      link: isProduct
          ? Uri.parse(
              'https://relicbazaar.page.link.com/?isProduct=$isProduct&text=$text&height=$height&image=$image&seller=$seller&amount=$amount&owner=$owner')
          : Uri.parse(
              'https://relicbazaar.page.link.com/?isProduct=$isProduct'),
      androidParameters: AndroidParameters(
        packageName: 'com.example.retro_shopping',
      ),
    );
    Uri url;
    final ShortDynamicLink shortLink = await parameters.buildShortLink();
    url = shortLink.shortUrl;
    print(url);
    return url;
  }
}
