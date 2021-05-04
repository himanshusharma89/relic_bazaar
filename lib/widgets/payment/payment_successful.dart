import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:relic_bazaar/helpers/constants.dart';
import 'package:relic_bazaar/widgets/retro_button.dart';

class PaymentSuccessful extends StatelessWidget {
  const PaymentSuccessful({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final double _height = MediaQuery.of(context).size.height;
    final double _width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Center(
        child: RelicBazaarStackedView(
          height: _height / 2.05,
          width: _width * 0.73,
          child: Container(
            height: _height * 0.4,
            width: _width * 0.7,
            color: Colors.white,
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: _height / 28,
                ),
                SvgPicture.string(
                  svgIv5cq2,
                  height: _height / 8.43,
                ),
                SizedBox(
                  height: _height / 28,
                ),
                const Text(
                  'Shopping Successful',
                  style: TextStyle(
                    color: RelicColors.primaryColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: _height / 56,
                ),
                const Text(
                  'Your order has been\nsuccessfully placed',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: _height / 28,
                ),
                RelicBazaarStackedView(
                  upperColor: Colors.black,
                  height: _height / 16,
                  width: _width / 1.64,
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                    ),
                    child: const Text(
                      'Continue Shopping',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      ),
    );
  }
}
