import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:retro_shopping/icons/my_flutter_app_icons.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xff009d9d),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 8,),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Stack(
                          children: [
                            Transform.translate(
                              offset: Offset(4.0, 4.0),
                              child: Container(
                                width: 35.0,
                                height: 35.0,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Container(
                              width: 35.0,
                              height: 35.0,
                              decoration: BoxDecoration(
                                color: Colors.white,
                              ),
                              child: Icon(
                                Icons.menu
                              ),
                            ),
                          ],
                        ),
                        Stack(
                          children: [
                            Transform.translate(
                              offset: Offset(4.0, 4.0),
                              child: Container(
                                width: 35.0,
                                height: 35.0,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Container(
                              width: 35.0,
                              height: 35.0,
                              decoration: BoxDecoration(
                                color: Colors.white,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(top:7,left: 6),
                                child: Icon(
                                  MyFlutterApp.cart,
                                  size: 32,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 50,),
                  Text.rich(
                    TextSpan(
                      style: TextStyle(
                        fontFamily: 'pix M 8pt',
                        fontSize: 14,
                        color: const Color(0xffffffff),
                        height: 1.3829787234042554,
                        shadows: [
                          Shadow(
                            color: const Color(0x29000000),
                            offset: Offset(0, 3),
                            blurRadius: 6,
                          )
                        ],
                      ),
                      children: [
                        TextSpan(
                          text: 'GOOD EVENING,\n',
                        ),
                        TextSpan(
                          text: 'LINUS!',
                          style: TextStyle(
                            fontSize: 47,
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(height: 20,),
                  searchBar(context),
                  SizedBox(height: 20,),
                  Container(
                    height: height,
                    width: width,
                    child: Stack(
                      children: <Widget>[
                        Container(
                          width: width*0.9,
                          height: 729.0,
                          decoration: BoxDecoration(
                            color: const Color(0xff181818),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 6,left: 6),
                          child: Container(
                            width: width*0.9,
                            height: 722.0,
                            decoration: BoxDecoration(
                              color: const Color(0xffffffff),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 8),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        productCard(),
                                        productCard(),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                      width: 24.5,
                      height: 24.6,
                      decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(17.0),
                  // image: DecorationImage(
                  //   image: const AssetImage(''),
                  //   fit: BoxFit.fill,
                  // ),
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
  Widget searchBar(BuildContext context){
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Transform.translate(
          offset: Offset(5, 5),
          child: Container(
            height: height*0.06,
            width: width*0.9,
            color: Colors.black,
          ),
        ),
        Container(
          height: height*0.06,
          width: width*0.9,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  MyFlutterApp.search
                ),
                Text(
                  'search for categories, items and more...',
                  style: TextStyle(
                    fontFamily: 'pix M 8pt',
                    fontSize: 15,
                    color: const Color(0xff181818),
                  ),
                  textAlign: TextAlign.left,
                ),
                Icon(
                  MyFlutterApp.search
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget productCard(){
    return Container(
      width: 155.0,
      height: 257.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        color: const Color(0xff38d0d0),
        border:
            Border.all(width: 1.0, color: const Color(0xff181818)),
        boxShadow: [
          BoxShadow(
            color: const Color(0x29000000),
            offset: Offset(0, 3),
            blurRadius: 6,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'ANTIQUE VASE',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 18,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w600,
                height: 1,
              ),
              textAlign: TextAlign.left,
            ),
            Text(
              'by Lloyd Duran',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 10,
                color: const Color(0xfffafafa),
                fontWeight: FontWeight.w300,
                height: 1.5,
              ),
              textAlign: TextAlign.left,
            ),
            Text(
              '\$435',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 18,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w600,
                height: 1,
              ),
              textAlign: TextAlign.left,
            ),
          ],
        ),
      ),
    );
  }
}

const String _svg_41sp59 =
    '<svg viewBox="4.5 9.0 27.0 18.0" ><path  d="M 4.5 18 L 31.5 18" fill="none" stroke="#000000" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" /><path  d="M 4.5 9 L 31.5 9" fill="none" stroke="#000000" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" /><path  d="M 4.5 27 L 31.5 27" fill="none" stroke="#000000" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" /></svg>';
