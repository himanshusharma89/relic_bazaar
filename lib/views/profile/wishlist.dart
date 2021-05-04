import 'package:flutter/material.dart';
import 'package:relic_bazaar/helpers/constants.dart';
import 'package:relic_bazaar/widgets/back_button.dart';
import 'package:relic_bazaar/widgets/retro_button.dart';
import 'package:relic_bazaar/widgets/payment/order_item.dart';

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
        leading: appBarBackButton(context),
        backgroundColor: RelicColors.backgroundColor,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RelicBazaarStackedView(
                  width: MediaQuery.of(context).size.width * 0.87,
                  height: 420,
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
        ),
      ),
    );
  }
}
