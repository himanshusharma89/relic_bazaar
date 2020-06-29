import 'package:flutter/material.dart';
import 'package:retro_shopping/icons/my_flutter_app_icons.dart';

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
                  color: Color(0xffffffff),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          MyFlutterApp.search
                        ),
                        Expanded(
                          child: TextFormField(
                            style: TextStyle(
                              fontFamily: 'pix M 8pt',
                              fontSize: 16,
                              color: const Color(0xff181818),
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
                        //     color: const Color(0xff181818),
                        //   ),
                        //   textAlign: TextAlign.left,
                        // ),
                        // Icon(
                        //   MyFlutterApp.search
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