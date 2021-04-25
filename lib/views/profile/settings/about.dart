import 'package:flutter/material.dart';
import 'package:relic_bazaar/helpers/constants.dart';
import 'package:relic_bazaar/widgets/back_button.dart';
import 'package:relic_bazaar/widgets/retro_button.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: appBarBackButton(context),
        backgroundColor: RelicColors.backgroundColor,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        primary: true,
        child: SizedBox(
          width: width,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text(
                  'RELIC BAZAAR',
                  style: TextStyle(
                    fontFamily: 'pixer',
                    fontSize: 47,
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
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Image.asset(
                  'assets/promo.png',
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                const Text(
                  '''Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.''',
                  style: TextStyle(
                    fontFamily: 'pixer',
                    fontSize: 20,
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
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                const Divider(
                  color: Colors.white,
                  thickness: 1,
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                const Text(
                  'version: 1.0.1',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'pixer',
                    fontSize: 22,
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
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                const Divider(
                  color: Colors.white,
                  thickness: 1,
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                const Text(
                  'Connect with us',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'pixer',
                    fontSize: 22,
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
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                // Instagram button
                RelicBazaarStackedView(
                  upperColor: Colors.white,
                  height: height * 0.046,
                  width: width * 0.4,
                  borderColor: Colors.white,
                  child: const Center(
                    child: Text(
                      'INSTAGRAM',
                      style: TextStyle(
                        fontFamily: 'pix M 8pt',
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: RelicColors.backgroundColor,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                // Facebook button
                RelicBazaarStackedView(
                  upperColor: Colors.white,
                  height: height * 0.046,
                  width: width * 0.4,
                  borderColor: Colors.white,
                  child: const Center(
                    child: Text(
                      'FACEBOOK',
                      style: TextStyle(
                        fontFamily: 'pix M 8pt',
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: RelicColors.backgroundColor,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                // Github button
                RelicBazaarStackedView(
                  upperColor: Colors.white,
                  height: height * 0.046,
                  width: width * 0.4,
                  borderColor: Colors.white,
                  child: const Center(
                    child: Text(
                      'GITHUB',
                      style: TextStyle(
                        fontFamily: 'pix M 8pt',
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: RelicColors.backgroundColor,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.04,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
