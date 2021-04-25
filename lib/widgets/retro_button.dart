import 'package:flutter/material.dart';
import 'package:relic_bazaar/helpers/constants.dart';

class RelicBazaarStackedView extends StatefulWidget {
  const RelicBazaarStackedView(
      {this.child,
      this.upperColor = RelicColors.primaryColor,
      this.lowerColor = Colors.black,
      this.width,
      this.height,
      this.borderColor = Colors.black});
  final Widget child;
  final Color upperColor;
  final Color lowerColor;
  final double width;
  final double height;
  final Color borderColor;
  @override
  _RelicBazaarStackedViewState createState() => _RelicBazaarStackedViewState();
}

class _RelicBazaarStackedViewState extends State<RelicBazaarStackedView> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Transform.translate(
          offset: const Offset(4.0, 4.0),
          child: Container(
            width: widget.width,
            height: widget.height,
            decoration: BoxDecoration(
              color: widget.lowerColor,
            ),
          ),
        ),
        Container(
          width: widget.width,
          height: widget.height,
          decoration: BoxDecoration(
              color: widget.upperColor,
              border: Border.all(color: widget.borderColor)),
          child: widget.child,
        ),
      ],
    );
  }
}
