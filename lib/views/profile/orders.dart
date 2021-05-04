import 'package:flutter/material.dart';
import 'package:relic_bazaar/helpers/constants.dart';
import 'package:relic_bazaar/widgets/back_button.dart';
import 'package:relic_bazaar/widgets/payment/order_item.dart';
import 'package:relic_bazaar/widgets/retro_button.dart';

class Order extends StatelessWidget {
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
              'ORDERS',
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
                  width: width * 0.87,
                  height: height * 0.75,
                  child: ListView(
                    shrinkWrap: true,
                    primary: false,
                    children: const <Widget>[
                      OrderItem(
                          title: 'ANTIQUE VASE',
                          ordered: 'ORDERED 3 DAYS AGO',
                          status: 'STATUS : ON THE WAY',
                          image: 'assets/items/3.png'),
                      Divider(
                        color: Colors.white,
                      ),
                      OrderItem(
                          title: 'TATUNG EINSTEIN',
                          ordered: 'ORDERED 3 WEEKS AGO',
                          status: 'ANTIQUE DELIVERED',
                          image: 'assets/items/1.png',
                          delivered: true),
                      Divider(
                        color: Colors.white,
                      ),
                      OrderItem(
                          title: 'M.DISC THROWER',
                          ordered: 'ORDERED 5 DAYS AGO',
                          status: 'STATUS : SHIPPED',
                          image: 'assets/items/2.png')
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
