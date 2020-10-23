import 'package:flutter/material.dart';
import 'package:retro_shopping/icons/my_flutter_app_icons.dart';

// ignore: must_be_immutable
class FloatingNavBar extends StatefulWidget {
  int index;
  final PageController _controller;

  FloatingNavBar(this.index,this._controller);

  @override
  _FloatingNavBarState createState() => _FloatingNavBarState();
}

class _FloatingNavBarState extends State<FloatingNavBar> {

  PageController controller;

  @override
  void initState() {
    controller=widget._controller;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      height: height*0.08,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        border: Border.all(
          color: Colors.black
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          floatingNavBarItem(MyFlutterApp.home,0),
          floatingNavBarItem(MyFlutterApp.search,1),
          floatingNavBarItem(MyFlutterApp.cart,2),
          floatingNavBarItem(MyFlutterApp.profile,3),
        ],
      ),
    );
  }
  Widget floatingNavBarItem(IconData icon, int index){
    return GestureDetector(
      onTap: (){
        setState(() {
          widget.index=index;
          widget._controller.jumpToPage(
            index,
          );
        });
      },
      child: Container(
        width: 45,height: 45,
        decoration: BoxDecoration(
          color: widget.index==index ? Color(0xff009D9D) : Colors.grey[400],
          border: widget.index==index
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
            bottom: blackBorder()
          )
        ),
        child: Padding(
          padding: const EdgeInsets.only(top:8,left: 8,right: 8,bottom: 8),
          child: Icon(
            icon,
            color: widget.index==index? Colors.white : Colors.black,
            size: 30,
          ),
        ),
      ),
    );
  }

  BorderSide blackBorder(){
    return BorderSide(
      color: Colors.black,
      width: 2,
      style: BorderStyle.solid
    );
  }

  BorderSide whiteBorder(){
    return BorderSide(
      color: Colors.white,
      width: 1,
      style: BorderStyle.solid
    );
  }
}