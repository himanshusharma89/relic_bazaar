import 'package:flutter/material.dart';
import 'package:retro_shopping/helpers/constants.dart';

class StackedContainer extends StatelessWidget {
  const StackedContainer({@required this.child, Key key, this.height, this.width, this.color})
      : super(key: key);

  final double height;
  final double width;
  final Widget child;
  final Color color;

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
              decoration: BoxDecoration(color: color ?? RelicColors.primaryColor),
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
