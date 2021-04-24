import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:relic_bazaar/helpers/constants.dart';

class PaymentSuccessful extends StatelessWidget {
  const PaymentSuccessful({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: const Offset(41.0, 37.0),
            child: Container(
              width: 300.0,
              height: 327.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(21.0),
                color: Colors.white,
                border: Border.all(width: 3.0, color: const Color(0x94000000)),
              ),
            ),
          ),
          Transform.translate(
            offset: const Offset(111.25, 71.8),
            child:
                // Adobe XD layer: 'idea' (group)
                Stack(
              children: <Widget>[
                Transform.translate(
                  offset: const Offset(35.97, 0.0),
                  child: Stack(
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          SvgPicture.string(
                            svgIv5cq2,
                            allowDrawingOutsideViewBox: true,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Transform.translate(
            offset: const Offset(63.0, 184.0),
            child: const Text(
              'Shopping Successful',
              style: TextStyle(
                fontSize: 24,
                color: RelicColors.primaryColor,
                fontWeight: FontWeight.w700,
                height: 1.5,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: const Offset(77.0, 232.5),
            child: const SizedBox(
              width: 228.0,
              child: Text(
                'Your Order has been \nsuccessfully placed',
                style: TextStyle(
                  fontSize: 18,
                  color: Color(0xff060707),
                  height: 1.5,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: const Offset(78.0, 315.0),
            child: Container(
              width: 232.0,
              height: 35.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7.0),
                color: Colors.black,
              ),
            ),
          ),
          Transform.translate(
            offset: const Offset(73.0, 310.0),
            child: Container(
              width: 232.0,
              height: 37.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7.0),
                color: Colors.white,
                border: Border.all(width: 2.0),
              ),
            ),
          ),
          Transform.translate(
            offset: const Offset(117.0, 315.5),
            child: const Text(
              'Continue Shopping!',
              style: TextStyle(
                fontSize: 14,
                color: Colors.black,
                fontWeight: FontWeight.w600,
                height: 1.5,
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}
