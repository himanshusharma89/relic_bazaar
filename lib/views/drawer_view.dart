import 'package:flutter/material.dart';
import 'package:relic_bazaar/helpers/constants.dart';
import 'package:relic_bazaar/services/auth_service.dart';

import '../widgets/drawer_item.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({
    this.pageController,
    Key key,
  }) : super(key: key);

  final PageController pageController;

  @override
  _DrawerWidgetState createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  final AuthenticationService _authenticationService = AuthenticationService();
  bool _isLoading = false;
  void goToScreen(int index) {
    if (widget.pageController.initialPage == index) {
      Navigator.of(context).pop();
    } else {
      setState(() {
        widget.pageController.jumpToPage(index);
      });
    }
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
                Navigator.of(context).pushNamed(
                  RouteConstant.ABOUT_SCREEN,
                );
              }),
          DrawerItem(
            icon: Icons.shopping_cart,
            title: 'CART',
            onTap: () => goToScreen(2),
          ),
          DrawerItem(
            icon: Icons.inbox,
            title: 'ORDERS',
            onTap: () {
              Navigator.of(context).pushNamed(
                RouteConstant.ORDERS_SCREEN,
              );
            },
          ),
          DrawerItem(
            icon: Icons.list,
            title: 'WISHLIST',
            onTap: () {
              Navigator.of(context).pushNamed(
                RouteConstant.WISHLIST_SCREEN,
              );
            },
          ),
          DrawerItem(
            icon: Icons.category,
            title: 'PRODUCTS',
            onTap: () => goToScreen(0),
          ),
          DrawerItem(
            icon: Icons.logout,
            title: 'LOG OUT',
            onTap: () {
              setState(() {
                _isLoading = true;
              });

              _authenticationService.logout().then((_) {
                Navigator.of(context).pushNamedAndRemoveUntil(
                  RouteConstant.LOGIN_SCREEN,
                  (Route<dynamic> route) => false,
                );
                setState(() {
                  _isLoading = false;
                });
              });
            },
            child: _isLoading
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : null,
          ),
        ],
      ),
    );
  }
}
