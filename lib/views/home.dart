import 'package:flutter/material.dart';
import 'package:retro_shopping/helpers/app_icons.dart';
import 'package:retro_shopping/helpers/constants.dart';
import 'package:retro_shopping/widgets/retro_button.dart';

class Home extends StatelessWidget {
  final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

  void _openDrawer() {
    _drawerKey.currentState.openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      key: _drawerKey,
      drawer: const DrawerWidget(),
      body: SingleChildScrollView(
          primary: true,
          child: SizedBox(
            width: width,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: height * 0.01,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            _openDrawer();
                          },
                          child: RetroButton(
                            upperColor: Colors.white,
                            lowerColor: Colors.black,
                            width: 35,
                            height: 35,
                            borderColor: Colors.white,
                            child: const Icon(Icons.menu),
                          ),
                        ),
                        RetroButton(
                          upperColor: Colors.white,
                          lowerColor: Colors.black,
                          width: 35,
                          height: 35,
                          borderColor: Colors.white,
                          child: const Padding(
                            padding: EdgeInsets.only(top: 7, left: 6),
                            child: Icon(
                              RelicIcons.cart,
                              size: 32,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  const Text.rich(
                    TextSpan(
                      style: TextStyle(
                        fontFamily: 'pixer',
                        fontSize: 16,
                        color: Colors.white,
                        height: 1.3829787234042554,
                        shadows: <Shadow>[
                          Shadow(
                            color: RelicColors.secondaryBlack,
                            offset: Offset(0, 3),
                            blurRadius: 6,
                          )
                        ],
                      ),
                      children: <TextSpan>[
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
                  SizedBox(
                    height: height * 1.08,
                    width: width,
                    child: Stack(
                      children: <Widget>[
                        Container(
                          width: width * 0.9,
                          // height: 729.0,
                          decoration: const BoxDecoration(
                            color: RelicColors.primaryBlack,
                          ),
                        ),
                        Transform.translate(
                          offset: const Offset(10, 10),
                          child: Container(
                            width: width * 0.9,
                            // height: 729.0,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: GridView.builder(
                                primary: false,
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 2,
                                        crossAxisSpacing: 8,
                                        mainAxisSpacing: 8,
                                        childAspectRatio: 1 / 1.6),
                                itemCount: productsList.length,
                                itemBuilder: (_, int index) =>
                                    productsList[index],
                              ),
                            ),
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
          )),
    );
  }

  Widget searchBar(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Stack(
      children: <Widget>[
        Transform.translate(
          offset: const Offset(5, 5),
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
              children: <Widget>[
                // const Icon(RelicIcons.search),
                Expanded(
                    child: TextFormField(
                  style: const TextStyle(
                    fontFamily: 'pix M 8pt',
                    fontSize: 16,
                    color: RelicColors.primaryBlack,
                  ),
                  decoration: const InputDecoration(
                      hintText: 'search for categories, items and more...',
                      border: InputBorder.none,
                      isDense: true,
                      contentPadding: EdgeInsets.symmetric(
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
                const Icon(RelicIcons.search),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: const EdgeInsets.only(top: 20.0),
        children: <Widget>[
          _createDrawerItem(icon: Icons.person, title: 'ABOUT', onTap: () {}),
          _createDrawerItem(
            icon: Icons.shopping_cart,
            title: 'CART',
            onTap: () {},
          ),
          _createDrawerItem(
            icon: Icons.list,
            title: 'WISHLIST',
            onTap: () {},
          ),
          _createDrawerItem(
            icon: Icons.category,
            title: 'PRODUCTS',
            onTap: () {},
          ),
          _createDrawerItem(
            icon: Icons.logout,
            title: 'LOG OUT',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

Widget _createDrawerItem(
    {IconData icon, String title, GestureTapCallback onTap}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(
          icon,
          color: RelicColors.backgroundColor,
          size: 40.0,
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 12.0,
              vertical: 30.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  title,
                  style: const TextStyle(
                    fontFamily: 'Pixer',
                    color: RelicColors.backgroundColor,
                    fontSize: 18.0,
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    ),
    onTap: onTap,
  );
}
