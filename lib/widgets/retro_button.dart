import 'package:flutter/material.dart';

// ignore: must_be_immutable
class RetroButton extends StatefulWidget {
  Widget child;
  Color upperColor;
  Color lowerColor;
  double width;
  double height;
  Color borderColor;
  RetroButton({required this.child,required this.upperColor,required this.lowerColor,required this.width,required this.height,required this.borderColor});
  @override
  _RetroButtonState createState() => _RetroButtonState();
}

class _RetroButtonState extends State<RetroButton> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Transform.translate(
          offset: Offset(4.0, 4.0),
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
            border: Border.all(
              color: widget.borderColor
            )
          ),
          child: widget.child,
        ),
      ],
    );
  }
}