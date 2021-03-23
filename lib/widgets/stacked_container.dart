import 'package:flutter/material.dart';
import 'package:retro_shopping/helpers/constants.dart';

class StackedContainer extends StatelessWidget {
  const StackedContainer({Key key, this.height, this.width, this.child})
      : super(key: key);

  final double height;
  final double width;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: const Offset(-2.5, -2.5),
      child: Stack(
        children: <Widget>[
          Transform.translate(
            offset: const Offset(5, 5),
            child: Container(
              width: width,
              height: height,
              decoration: const BoxDecoration(color: Colors.black),
            ),
          ),
          Container(
              height: height,
              width: width,
              decoration: const BoxDecoration(color: RelicColors.primaryColor),
              child: child),
        ],
      ),
    );
  }
}
// 0.88
// 0.605
// 0.60
// 0.87
