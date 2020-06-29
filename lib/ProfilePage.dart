import 'package:flutter/material.dart';
import 'package:retro_shopping/retro_button.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xff009d9d),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: height*0.02,),
                TopSection(),
                SizedBox(height: height*0.02,),
                OrdersSection(),
                SizedBox(height: height*0.02,),
                WishlistSection(),
                SizedBox(height: height*0.1,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class WishlistSection extends StatelessWidget {
  const WishlistSection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RetroButton(
          child: Center(
            child: Text(
              '♥ WISHLIST',
              style: TextStyle(
                fontFamily: 'pix M 8pt',
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xff009D9D),
              ),
              // textAlign: TextAlign.left,
            ),
          ),
          upperColor: Colors.white,
          lowerColor: Colors.black,
          height: height*0.046,
          width: width*0.35,
          borderColor: Colors.white,
        ),
        // SectionHeader(title: "♥ WISHLIST"),
        SizedBox(height: 20),
        Center(
          child: Stack(
            alignment: AlignmentDirectional.topStart,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.88 + 5,
                height: 216,
                decoration: BoxDecoration(color: Colors.black),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
                width: MediaQuery.of(context).size.width * 0.87,
                height: 210,
                decoration: BoxDecoration(color: Color(0xff38D0D0)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    OrderItem(
                        title: "EDI TURNTABLE",
                        ordered: "by Tony Stark",
                        status: "OUT OF STOCK",
                        image: 'assets/items/4.png'),
                    // Divider(color: Clors.w,),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class OrdersSection extends StatelessWidget {
  const OrdersSection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RetroButton(
          child: Center(
            child: Text(
              'ORDERS',
              style: TextStyle(
                fontFamily: 'pix M 8pt',
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xff009D9D),
              ),
              // textAlign: TextAlign.left,
            ),
          ),
          upperColor: Colors.white,
          lowerColor: Colors.black,
          height: height*0.046,
          width: width*0.35,
          borderColor: Colors.white,
        ),
        SizedBox(height: 20),
        Center(
          child: Stack(
            alignment: AlignmentDirectional.topStart,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.88 + 5,
                height: 395,
                decoration: BoxDecoration(color: Colors.black),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
                width: MediaQuery.of(context).size.width * 0.87,
                height: 390,
                decoration: BoxDecoration(color: Color(0xff38D0D0)),
                child: Column(
                  children: [
                    OrderItem(
                        title: "ANTIQUE VASE",
                        ordered: "ORDERED 3 DAYS AGO",
                        status: "STATUS : ON THE WAY",
                        image: 'assets/items/3.png'),
                    Divider(
                      color: Colors.white,
                    ),
                    OrderItem(
                        title: "TATUNG EINSTEIN",
                        ordered: "ORDERED 3 WEEKS AGO",
                        status: "ANTIQUE DELIVERED",
                        image: 'assets/items/1.png',
                        delivered: true
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class OrderItem extends StatelessWidget {
  final String title;
  final String image;
  final String ordered;
  final String status;
  final bool delivered;
  OrderItem(
      {this.title,
      this.image,
      this.ordered,
      this.status,
      this.delivered = false});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Stack(
            children: [
              Container(
                width: 140,
                height: 170,
                decoration: BoxDecoration(color: Colors.black),
              ),
              Container(
                width: 135,
                height: 165,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                        image: AssetImage(this.image), fit: BoxFit.scaleDown)),
              ),
            ],
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                this.title,
                overflow: TextOverflow.fade,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w700),
                    maxLines: 1,
              ),
              SizedBox(height:3,),
              Text(
                this.ordered,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 10),
              Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.36 + 3,
                    height: 43,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.36,
                    height: 40,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 1),
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    child: Center(
                        child: Text(
                      this.status,
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    )),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
                    decoration: BoxDecoration(
                        border: Border.all(width: 1.0, color: Colors.white),
                        borderRadius: BorderRadius.circular(8),
                        color: Color(0xff009D9D)),
                    child: Text("DETAILS",
                        style: TextStyle(fontSize: 13, color: Colors.white)),
                  ),
                  SizedBox(width: 10),
                  delivered
                      ? Container()
                      : Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 8),
                          decoration: BoxDecoration(
                              border: Border.all(width: 1.0, color: Colors.white),
                              borderRadius: BorderRadius.circular(8),
                              color: Color(0xffE04A3A)),
                          child: Text("CANCEL",
                              style:
                                  TextStyle(fontSize: 13, color: Colors.white)),
                        ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}

class SectionHeader extends StatelessWidget {
  final String title;

  SectionHeader({this.title});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.topStart,
      children: [
        Container(
          width: 155,
          height: 55,
          decoration: BoxDecoration(color: Colors.black),
        ),
        Container(
          width: 150,
          height: 50,
          decoration: BoxDecoration(color: Colors.white),
          child: Center(
            child: Text(
              this.title,
              style: TextStyle(
                  color: Color(0xff009D9D),
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
          ),
        )
      ],
    );
  }
}

class TopSection extends StatelessWidget {
  const TopSection({Key key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: 160,
          width: 160,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/person.png'), fit: BoxFit.cover)),
        ),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Linus",
                style: TextStyle(
                    fontSize: 48, fontFamily: 'Pixer', color: Colors.white),
              ),
              Text(
                "Torvalds",
                style: TextStyle(
                    fontSize: 36, fontFamily: 'Pixer', color: Colors.white),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "SHOPPER SINCE MAY 2020",
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    // fontFamily: 'Poppins',
                    color: Colors.white),
              ),
            ],
          ),
        )
      ],
    );
  }
}
