import 'package:flutter/material.dart';
import 'package:retro_shopping/widgets/search_bar.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(
        top: height / 20,
        left: width / 22,
        right: 22,
      ),
      child: searchBar(context),
    );
  }
}
