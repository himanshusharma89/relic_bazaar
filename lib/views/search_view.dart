import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:relic_bazaar/services/remote_config.dart';
import 'package:relic_bazaar/widgets/search_bar.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final List<Image> listOfImages = <Image>[];

  Future<List<Image>> getImageData() async {
    final RemoteConfigService _remoteConfigService =
        await RemoteConfigService.getInstance();
    final Map<String, dynamic> fetchedData =
        json.decode(_remoteConfigService.getImageUrls) as Map<String, dynamic>;

    fetchedData.forEach(
      (_, dynamic imageUrl) {
        listOfImages.add(
          Image.network(
            imageUrl.toString(),
            fit: BoxFit.cover,
          ),
        );
      },
    );
    return listOfImages;
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(
              height / 40,
            ),
            child: searchBar(context),
          ),
          FutureBuilder<List<Image>>(
            future: getImageData(),
            builder: (_, AsyncSnapshot<dynamic> snapshot) {
              return snapshot.data != null
                  ? Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 2,
                          color: Colors.white,
                        ),
                      ),
                      child: CarouselSlider(
                        items: snapshot.data as List<Image>,
                        options: CarouselOptions(
                          enlargeCenterPage: true,
                          autoPlay: true,
                          autoPlayInterval: const Duration(
                            seconds: 2,
                          ),
                          autoPlayCurve: Curves.ease,
                        ),
                      ),
                    )
                  : const Center(
                      child: CircularProgressIndicator(),
                    );
            },
          ),
        ],
      ),
    );
  }
}
