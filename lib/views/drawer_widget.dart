import 'package:flutter/material.dart';
import 'package:retro_shopping/helpers/constants.dart';
import '../widgets/drawer_item.dart';

class DrawerWidget extends StatefulWidget {
  final PageController pageController;
  DrawerWidget({
    this.pageController,
    Key key,
  }) : super(key: key);

  @override
  _DrawerWidgetState createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  void goToScreen({String routeName, BuildContext context}) {
    Navigator.of(context).pushReplacementNamed(routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: const EdgeInsets.only(top: 20.0),
        children: <Widget>[
          DrawerItem(
            icon: Icons.person,
            title: 'ABOUT',
            onTap: () {
              goToScreen(
                routeName: RouteConstant.ABOUT_SCREEN,
                context: context,
              );
            },
          ),
          DrawerItem(
            icon: Icons.shopping_cart,
            title: 'CART',
            onTap: () {
              setState(() {
                widget.pageController.jumpToPage(2);
              });
            },
          ),
          DrawerItem(
            icon: Icons.list,
            title: 'WISHLIST',
            onTap: () {
              goToScreen(
                routeName: RouteConstant.WISHLIST_SCREEN,
                context: context,
              );
            },
          ),
          DrawerItem(
            icon: Icons.category,
            title: 'PRODUCTS',
            onTap: () {
              if (widget.pageController.initialPage == 0) {
                Navigator.of(context).pop();
              } else {
                setState(() {
                  widget.pageController.jumpToPage(0);
                });
              }
            },
          ),
          DrawerItem(
            icon: Icons.logout,
            title: 'LOG OUT',
            onTap: () {
              goToScreen(
                routeName: RouteConstant.LOGIN_SCREEN,
                context: context,
              );
            },
          ),
        ],
      ),
    );
  }
}
