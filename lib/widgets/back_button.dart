import 'package:flutter/material.dart';
import 'package:relic_bazaar/widgets/retro_button.dart';

Widget appBarBackButton(BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.pop(context);
    },
    child: const Center(
      child: RelicBazaarStackedView(
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
  );
}
