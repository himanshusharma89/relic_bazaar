import 'package:flutter/material.dart';
import 'package:retro_shopping/helpers/app_icons.dart';
import 'package:retro_shopping/helpers/constants.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: [
            SizedBox(height: height*0.01),
            Stack(
              children: [
                Transform.translate(
                  offset: Offset(5, 5),
                  child: Container(
                    height: height*0.06,
                    width: width*0.9,
                    color: Colors.black,
                  ),
                ),
                Container(
                  height: height*0.06,
                  width: width*0.9,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          RelicIcons.search
                        ),
                        Expanded(
                          child: TextFormField(
                            style: TextStyle(
                              fontFamily: 'pix M 8pt',
                              fontSize: 16,
                              color: RelicColors.primaryBlack,
                            ),
                            decoration: InputDecoration(
                              hintText: 'search for categories, items and more...',
                              border: InputBorder.none,
                              isDense: true,
                              contentPadding: const EdgeInsets.symmetric(horizontal: 10,)
                            ),
                          )
                        ),
                        // Text(
                        //   'search for categories, items and more...',
                        //   style: TextStyle(
                        //     fontFamily: 'pix M 8pt',
                        //     fontSize: 15,
                        //     color: RelicColors.primaryBlack,
                        //   ),
                        //   textAlign: TextAlign.left,
                        // ),
                        // Icon(
                        //   RelicIcons.search
                        // ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}