import 'package:flutter/material.dart';
import 'package:retro_shopping/helpers/constants.dart';
import 'package:retro_shopping/widgets/retro_button.dart';
import 'package:retro_shopping/widgets/payment/order_item.dart';

class Wishlist extends StatefulWidget {
  const Wishlist({Key key}) : super(key: key);

  @override
  _WishlistState createState() => _WishlistState();
}

class _WishlistState extends State<Wishlist> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: RelicBazaarStackedView(
          upperColor: Colors.white,
          height: height * 0.046,
          width: width * 0.35,
          borderColor: Colors.white,
          child: const Center(
            child: Text(
              '♥ WISHLIST',
              style: TextStyle(
                fontFamily: 'pix M 8pt',
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: RelicColors.backgroundColor,
              ),
              // textAlign: TextAlign.left,
            ),
          ),
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Container(
            padding: const EdgeInsets.only(left: 10, top: 10),
            child: RelicBazaarStackedView(
              upperColor: Colors.white,
              height: height * 0.035,
              width: width * 0.44,
              borderColor: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Icon(
                    Icons.arrow_back,
                    size: 20,
                    color: RelicColors.primaryBlack,
                  ),
                ],
              ),
            ),
          ),
        ),
        backgroundColor: RelicColors.backgroundColor,
      ),
      backgroundColor: RelicColors.backgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: height * 0.01,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(height: 20),
                  Center(
                    child: Stack(
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width * 0.88 + 5,
                          height: 431,
                          decoration: const BoxDecoration(color: Colors.black),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 16, horizontal: 12),
                          width: MediaQuery.of(context).size.width * 0.87,
                          height: 420,
                          decoration: const BoxDecoration(
                              color: RelicColors.primaryColor),
                          child: ListView(
                            shrinkWrap: true,
                            primary: false,
                            children: const <Widget>[
                              OrderItem(
                                  title: 'EDI TURNTABLE',
                                  ordered: 'by Tony Stark',
                                  status: 'OUT OF STOCK',
                                  image: 'assets/items/4.png'),

                              Divider(
                                color: Colors.white,
                              ),
                              OrderItem(
                                title: 'TATUNG EINSTEIN',
                                ordered: 'by Chris Evans',
                                status: 'OUT OF STOCK',
                                image: 'assets/items/1.png',
                              ),
                              // Divider(color: Clors.w,),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
