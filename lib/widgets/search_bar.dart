import 'package:flutter/material.dart';
import 'package:retro_shopping/helpers/app_icons.dart';
import 'package:retro_shopping/helpers/constants.dart';
import 'package:retro_shopping/helpers/product_search_delegate.dart';
import 'package:retro_shopping/widgets/retro_button.dart';

Widget searchBar(BuildContext context) {
  final double height = MediaQuery.of(context).size.height;
  final double width = MediaQuery.of(context).size.width;
  return RelicBazaarStackedView(
    height: height * 0.06,
    width: width * 0.9,
    child: Container(
      height: height * 0.06,
      width: width * 0.9,
      color: RelicColors.primaryColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            InkWell(
              onTap: () => showSearch(
                context: context,
                delegate: ProductSearchDelegate(),
              ),
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: <Widget>[
                  const Text(
                    'Search for categories, items ...',
                    style: TextStyle(
                      fontFamily: 'pix M 8pt',
                      fontSize: 18,
                      color: RelicColors.primaryBlack,
                    ),
                  ),
                ],
              ),
            ),
            const Icon(RelicIcons.search),
          ],
        ),
      ),
    ),
  );
}
