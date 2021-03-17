import 'package:flutter/material.dart';
import 'package:retro_shopping/views/orders.dart';
//import 'package:retro_shopping/views/profile.dart';
import '../widgets/drawer_item.dart';
import 'wishlist.dart';

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
          DrawerItem(icon: Icons.person, title: 'ABOUT', onTap: () {}),
          DrawerItem(
            icon: Icons.shopping_cart,
            title: 'CART',
            onTap: () {},
          ),
          DrawerItem(
            icon: Icons.inbox,
            title: 'ORDERS',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute<dynamic>(builder: (BuildContext context) => Order()),
              );
            },
          ),
          DrawerItem(
            icon: Icons.list,
            title: 'WISHLIST',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute<dynamic>(builder: (BuildContext context) => const Wishlist()),
              );
            },
          ),
          DrawerItem(
            icon: Icons.category,
            title: 'PRODUCTS',
            onTap: () {},
          ),
          DrawerItem(
            icon: Icons.logout,
            title: 'LOG OUT',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
