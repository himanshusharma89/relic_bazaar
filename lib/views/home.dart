import 'package:flutter/material.dart';
import 'package:retro_shopping/helpers/app_icons.dart';
import 'package:retro_shopping/helpers/constants.dart';
import 'package:retro_shopping/views/profile.dart';
import 'package:retro_shopping/widgets/retro_button.dart';

class Home extends StatelessWidget {

  final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

  void _openDrawer () {
    _drawerKey.currentState.openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      key: _drawerKey,
      drawer: Drawer(),
      body:SingleChildScrollView(
            primary: true,
          child: Container(
              width: width,
              child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
          SizedBox(
          height: height * 0.01,
          ),
          Container(
          width: MediaQuery.of(context).size.width,
          child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          GestureDetector(
          child: RetroButton(
          child: Icon(Icons.menu),
                            upperColor: Colors.white,
                            lowerColor: Colors.black,
                            width: 35,
                            height: 35,
                            borderColor: Colors.white,
                          ),
                          onTap: (){_openDrawer();},
                        ),
                        RetroButton(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 7, left: 6),
                            child: Icon(
                              RelicIcons.cart,
                              size: 32,
                            ),
                          ),
                          upperColor: Colors.white,
                          lowerColor: Colors.black,
                          width: 35,
                          height: 35,
                          borderColor: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  Text.rich(
                    TextSpan(
                      style: TextStyle(
                        fontFamily: 'pixer',
                        fontSize: 16,
                        color: Colors.white,
                        height: 1.3829787234042554,
                        shadows: [
                          Shadow(
                            color: RelicColors.secondaryBlack,
                            offset: Offset(0, 3),
                            blurRadius: 6,
                          )
                        ],
                      ),
                      children: [
                        TextSpan(
                          text: 'GOOD EVENING,\n',
                        ),
                        TextSpan(
                          text: 'LINUS!',
                          style: TextStyle(
                            fontFamily: 'Pixer',
                            fontSize: 47,
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  searchBar(context),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Container(
                    height: height * 1.08,
                    width: width,
                    child: Stack(
                      children: <Widget>[
                        Container(
                          width: width * 0.9,
                          // height: 729.0,
                          decoration: BoxDecoration(
                            color: RelicColors.primaryBlack,
                          ),
                        ),
                        Transform.translate(
                          offset: Offset(10, 10),
                          child: Container(
                            width: width * 0.9,
                            // height: 729.0,
                            decoration: BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: GridView.builder(
                                  primary: false,
                                    gridDelegate:
                                        SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: 2,
                                            crossAxisSpacing: 8,
                                            mainAxisSpacing: 8,
                                            childAspectRatio: 1/1.6),
                                    itemCount: productsList.length,
                                    itemBuilder: (_, index) =>
                                        productsList[index])),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height * 0.1,
                  ),
                ],
              ),
            ),
          )
        ),
      );
  }

  Widget searchBar(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Transform.translate(
          offset: Offset(5, 5),
          child: Container(
            height: height * 0.06,
            width: width * 0.9,
            color: Colors.black,
          ),
        ),
        Container(
          height: height * 0.06,
          width: width * 0.9,
          color: RelicColors.primaryColor,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(RelicIcons.search),
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
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 10,
                      )),
                )),
                // Text(
                //   'search for categories, items and more...',
                //   style: TextStyle(
                //     fontFamily: 'pix M 8pt',
                //     fontSize: 15,
                //     color: RelicColors.primaryBlack,
                //   ),
                //   textAlign: TextAlign.left,
                // ),
                Icon(RelicIcons.search),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
