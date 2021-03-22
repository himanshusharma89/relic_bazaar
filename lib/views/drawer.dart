import 'package:flutter/material.dart';
import 'package:retro_shopping/services/google_auth.dart';
import 'package:retro_shopping/views/orders.dart';
//import 'package:retro_shopping/views/profile.dart';
import '../widgets/drawer_item.dart';
import 'Wishlist.dart';
import 'package:retro_shopping/views/login.dart';
import 'package:firebase_auth/firebase_auth.dart';

class DrawerWidget extends StatelessWidget {
  DrawerWidget({
    Key key,
  }) : super(key: key);

  final _auth = FirebaseAuth.instance;

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
                MaterialPageRoute<dynamic>(
                    builder: (BuildContext context) => Order()),
              );
            },
          ),
          DrawerItem(
            icon: Icons.list,
            title: 'WISHLIST',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute<dynamic>(
                    builder: (BuildContext context) => const Wishlist()),
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
            onTap: () async {
              final user = _auth.currentUser;
              if (user != null) {
                await _auth.signOut();
                Navigator.pushReplacementNamed(context, '/login');
              }
              signOutGoogle().then(
                (res) {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => LoginScreen()),
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
