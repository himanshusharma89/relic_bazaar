import 'package:flutter/material.dart';
import 'package:relic_bazaar/helpers/app_icons.dart';
import 'package:relic_bazaar/helpers/constants.dart';
import 'package:relic_bazaar/widgets/retro_button.dart';
import 'package:relic_bazaar/widgets/search_bar.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.all(
          height / 40,
        ),
        child: searchBar(context),
      ),
    );
  }
}
