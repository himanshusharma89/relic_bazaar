import 'package:flutter/material.dart';
import 'package:relic_bazaar/helpers/constants.dart';
import 'package:relic_bazaar/model/user_model.dart';
import 'package:relic_bazaar/widgets/retro_button.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({this.user});

  final UserModel user;

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

  @override
  Widget build(BuildContext context) {
    final double _height = MediaQuery.of(context).size.height;
    final double _width = MediaQuery.of(context).size.width;
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
            TopSection(
              user: user,
            ),
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
  }
}

class TopSection extends StatelessWidget {
  const TopSection({Key key, this.user}) : super(key: key);

  final UserModel user;

  @override
  Widget build(BuildContext context) {
    final double _height = MediaQuery.of(context).size.height;
    return Stack(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              height: _height / 6,
              width: _height / 6,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/person.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  user.name.toString(),
                  style: const TextStyle(
                      fontSize: 25, fontFamily: 'Pixer', color: Colors.white),
                ),
                Text(
                  user.email.toString(),
                  style: const TextStyle(
                      fontSize: 10, fontFamily: 'Pixer', color: Colors.white),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'SHOPPER SINCE MAY 2020',
                  style: TextStyle(
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
