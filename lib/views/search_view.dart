import 'package:flutter/material.dart';
import 'package:retro_shopping/helpers/app_icons.dart';
import 'package:retro_shopping/helpers/constants.dart';
import 'package:retro_shopping/widgets/retro_button.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Column(
          children: <Widget>[
            RelicBazaarStackedView(
              height: height * 0.06,
              width: width * 0.9,
              upperColor: Colors.white,
              child: TextFormField(
                style: const TextStyle(
                  fontFamily: 'pix M 8pt',
                  fontSize: 18,
                  color: RelicColors.primaryBlack,
                ),
                decoration: const InputDecoration(
                    hintText: 'search for categories, items and more...',
                    border: InputBorder.none,
                    prefixIcon: Icon(RelicIcons.search)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
