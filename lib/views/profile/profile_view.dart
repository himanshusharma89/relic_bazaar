import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:relic_bazaar/helpers/constants.dart';
import 'package:relic_bazaar/model/user_model.dart';
import 'package:relic_bazaar/services/db_userdata.dart';
import 'package:relic_bazaar/widgets/retro_button.dart';

class ProfilePage extends StatelessWidget {
  Divider dividerBuilder() => const Divider(
        color: Colors.white,
        endIndent: 20,
        indent: 20,
        thickness: 4.0,
      );

  InkWell buttonBuilder({
    double height,
    String text,
    double width,
    String routeName,
    BuildContext context,
  }) =>
      InkWell(
        onTap: () => Navigator.of(context).pushNamed(routeName),
        child: RelicBazaarStackedView(
          upperColor: Colors.white,
          height: height * 0.046,
          width: width * 0.35,
          borderColor: Colors.white,
          child: Center(
            child: Text(
              text,
              style: const TextStyle(
                fontFamily: 'pix M 8pt',
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: RelicColors.backgroundColor,
              ),
            ),
          ),
        ),
      );

  Future<UserModel> _getUserData() async {
    final User user = FirebaseAuth.instance.currentUser;
    final DbUserData _userdata = DbUserData.instance;
    return _userdata.fetchData(user.uid);
  }

  @override
  Widget build(BuildContext context) {
    final double _height = MediaQuery.of(context).size.height;
    final double _width = MediaQuery.of(context).size.width;
    return FutureBuilder<UserModel>(
      future: _getUserData(),
      builder: (_, AsyncSnapshot<UserModel> snapshot) {
        if (snapshot.hasData) {
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 18,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: _height * 0.02,
                  ),
                  TopSection(user: snapshot.data),
                  SizedBox(
                    height: _height * 0.02,
                  ),
                  dividerBuilder(),
                  SizedBox(
                    height: _height * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      buttonBuilder(
                        text: '🛍️ ORDERS',
                        height: _height,
                        width: _width,
                        context: context,
                        routeName: RouteConstant.ORDERS_SCREEN,
                      ),
                      buttonBuilder(
                        text: '♥ WISHLIST',
                        height: _height,
                        width: _width,
                        context: context,
                        routeName: RouteConstant.WISHLIST_SCREEN,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: _height * 0.02,
                  ),
                  dividerBuilder(),
                ],
              ),
            ),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}

class TopSection extends StatelessWidget {
  const TopSection({this.user});
  final UserModel user;

  @override
  Widget build(BuildContext context) {
    final double _height = MediaQuery.of(context).size.height;
    final User _currentUser = FirebaseAuth.instance.currentUser;
    final String joiningDate = DateFormat.yMMMM()
        .format(_currentUser.metadata.creationTime)
        .toUpperCase();
    return Stack(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            RelicBazaarStackedView(
              height: _height / 6,
              width: _height / 6,
              child: Image.network(
                user.imageUrl,
                fit: BoxFit.cover,
                filterQuality: FilterQuality.high,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  user.name,
                  style: const TextStyle(
                    fontSize: 25,
                    fontFamily: 'Pixer',
                    color: Colors.white,
                  ),
                ),
                Text(
                  user.email,
                  style: const TextStyle(
                    fontSize: 10,
                    fontFamily: 'Pixer',
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'SHOPPER SINCE $joiningDate',
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
        Positioned(
          top: 0,
          right: 0,
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(
                RouteConstant.SETTINGS_SCREEN,
              );
            },
            child: RelicBazaarStackedView(
              upperColor: Colors.white,
              width: _height / 24,
              height: _height / 24,
              borderColor: Colors.white,
              child: const Icon(
                Icons.settings,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
