import 'package:flutter/material.dart';

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
      height: height*0.095,
      width: width*0.925,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              width: width*0.91,
              height: height*0.08,
              decoration: BoxDecoration(
                color: Colors.black,
                border: Border.all(
                  color: Colors.black
                )
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: width*0.91,
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
                  floatingNavBarItem(Icons.home,0),
                  floatingNavBarItem(Icons.search,1),
                  floatingNavBarItem(Icons.shopping_cart,2),
                  floatingNavBarItem(Icons.person,3),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
  Widget floatingNavBarItem(IconData icon, int index){
    return GestureDetector(
      onTap: (){
        setState(() {
          widget.index=index;
          widget._controller.animateToPage(
            index,
            duration:Duration(milliseconds: 200),
            curve: Curves.easeIn,
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
        child: Icon(
          icon,
          color: widget.index==index? Colors.white : Colors.black,
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