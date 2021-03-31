import 'package:flutter/material.dart';
import 'package:retro_shopping/helpers/constants.dart';
import 'package:retro_shopping/widgets/payment/order_item.dart';
import 'package:retro_shopping/widgets/retro_button.dart';

class Order extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: RetroButton(
          upperColor: Colors.white,
          lowerColor: Colors.black,
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
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Container(
            padding: const EdgeInsets.only(left: 10, top: 15),
            child: RetroButton(
              upperColor: Colors.white,
              lowerColor: Colors.black,
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: height * 0.08,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Center(
                      child: Stack(
                        children: <Widget>[
                          Container(
                            width: MediaQuery.of(context).size.width * 0.88 + 5,
                            height: 590,
                            decoration:
                                const BoxDecoration(color: Colors.black),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 16, horizontal: 12),
                            width: MediaQuery.of(context).size.width * 0.87,
                            decoration: const BoxDecoration(
                                color: RelicColors.primaryColor),
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
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
