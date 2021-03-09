import 'package:flutter/material.dart';
import 'package:retro_shopping/helpers/app_icons.dart';
import 'package:retro_shopping/helpers/constants.dart';

// ignore: must_be_immutable
class FloatingNavBar extends StatefulWidget {
  int index;
  final PageController _controller;

  FloatingNavBar(this.index, this._controller);

  @override
  _FloatingNavBarState createState() => _FloatingNavBarState();
}

class _FloatingNavBarState extends State<FloatingNavBar> {
  late PageController controller;

  @override
  void initState() {
    controller = widget._controller;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: kBottomNavigationBarHeight,
      decoration: BoxDecoration(
          color: Colors.grey[200], border: Border.all(color: Colors.black)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          floatingNavBarItem(RelicIcons.home, 0),
          floatingNavBarItem(RelicIcons.search, 1),
          floatingNavBarItem(RelicIcons.cart, 2),
          floatingNavBarItem(RelicIcons.profile, 3),
        ],
      ),
    );
  }

  Widget floatingNavBarItem(IconData icon, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          widget.index = index;
          widget._controller.jumpToPage(
            index,
          );
        });
      },
      child: Container(
        width: 45,
        height: 45,
        decoration: BoxDecoration(
            color: widget.index == index
                ? RelicColors.backgroundColor
                : Colors.grey[400],
            border: widget.index == index
                ? Border(
                    top: blackBorder(),
                    left: blackBorder(),
                    bottom: whiteBorder(),
                    right: whiteBorder(),
                  )
                : Border(
                    top: whiteBorder(),
                    left: whiteBorder(),
                    right: blackBorder(),
                    bottom: blackBorder())),
        child: Padding(
          padding: const EdgeInsets.only(top: 8, left: 8, right: 8, bottom: 8),
          child: Icon(
            icon,
            color: widget.index == index ? Colors.white : Colors.black,
            size: 30,
          ),
        ),
      ),
    );
  }

  BorderSide blackBorder() {
    return BorderSide(color: Colors.black, width: 2, style: BorderStyle.solid);
  }

  BorderSide whiteBorder() {
    return BorderSide(color: Colors.white, width: 1, style: BorderStyle.solid);
  }
}
