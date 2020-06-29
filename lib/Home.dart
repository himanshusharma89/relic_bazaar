import 'package:flutter/material.dart';
import 'package:retro_shopping/icons/my_flutter_app_icons.dart';
import 'package:retro_shopping/retro_button.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: width,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: height*0.01,),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RetroButton(
                          child: Icon(
                            Icons.menu
                          ),
                          upperColor: Colors.white,
                          lowerColor: Colors.black,
                          width: 35,
                          height: 35,
                          borderColor: Colors.white,
                        ),
                        RetroButton(
                          child: Padding(
                            padding: const EdgeInsets.only(top:7,left: 6),
                            child: Icon(
                              MyFlutterApp.cart,
                              size: 32,
                            ),
                          ),
                          upperColor: Colors.white,
                          lowerColor: Colors.black,
                          width: 35,
                          height: 35,
                          borderColor: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: height*0.03,),
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
                  SizedBox(height: height*0.02,),
                  searchBar(context),
                  SizedBox(height: height*0.02,),
                  Container(
                    height: height*1.08,
                    width: width,
                    child: Stack(
                      children: <Widget>[
                        Container(
                          width: width*0.9,
                          // height: 729.0,
                          decoration: BoxDecoration(
                            color: const Color(0xff181818),
                          ),
                        ),
                        Transform.translate(
                          offset: Offset(10, 10),
                          child: Container(
                            width: width*0.9,
                            // height: 729.0,
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
                                        productCard(
                                          'ANTIQUE VASE',
                                          'by Lloyd Duran',
                                          '₹ 4035',
                                          'assets/items/3.png'
                                        ),
                                        productCard(
                                          'EDI TURNTABLE',
                                          'by Tony Stark',
                                          '₹ 5035',
                                          'assets/items/4.png'
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: height*0.025,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        productCard(
                                          'TATUNG EINSTEIN',
                                          'by Lloyd Duran',
                                          '₹ 435',
                                          'assets/items/1.png'
                                        ),
                                        productCard(
                                          'ANTIQUE VASE',
                                          'by Lloyd Duran',
                                          '₹ 435',
                                          'assets/items/4.png'
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: height*0.025,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        productCard(
                                          'ANTIQUE VASE',
                                          'by Lloyd Duran',
                                          '₹ 435',
                                          'assets/items/4.png'
                                        ),
                                        productCard(
                                          'ANTIQUE VASE',
                                          'by Lloyd Duran',
                                          '₹ 435',
                                          'assets/items/4.png'
                                        ),
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
                  SizedBox(height: height*0.2,),
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
          color: Color(0xff38d0d0),
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

  Widget productCard(String text, String owner, String amount, String image){
    return Container(
      width: 155.0,
      height: 257.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        color: const Color(0xff38d0d0),
        border: Border.all(width: 1.0, color: const Color(0xff181818)),
        boxShadow: [
          BoxShadow(
            color: const Color(0x29000000),
            offset: Offset(0, 3),
            blurRadius: 6,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 18,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.bold,
                height: 1,
              ),
              textAlign: TextAlign.left,
            ),
            Text(
              owner,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 11,
                color: const Color(0xfffafafa),
                fontWeight: FontWeight.w500,
                height: 1.5,
              ),
              textAlign: TextAlign.left,
            ),
            SizedBox(height: 20,),
            Text(
              amount,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 18,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w700,
                height: 1,
              ),
              textAlign: TextAlign.left,
            ),
            Transform.translate(
              offset: Offset(16, 10),
              child: Image.asset(
                image,
                height: 150,
                width: 150,
              ),
            )
          ],
        ),
      ),
    );
  }
}