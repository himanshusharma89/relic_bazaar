import 'package:flutter/material.dart';

class RetroButton extends StatefulWidget {
  const RetroButton(
      {required this.child,
      required this.upperColor,
      required this.lowerColor,
      required this.width,
      required this.height,
      required this.borderColor});
  final Widget child;
  final Color upperColor;
  final Color lowerColor;
  final double width;
  final double height;
  final Color borderColor;

  @override
  _RetroButtonState createState() => _RetroButtonState();
}

class _RetroButtonState extends State<RetroButton> {
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
