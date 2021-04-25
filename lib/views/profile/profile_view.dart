import 'package:flutter/material.dart';
import 'package:relic_bazaar/helpers/constants.dart';
import 'package:relic_bazaar/widgets/payment/order_item.dart';
import 'package:relic_bazaar/widgets/retro_button.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: height * 0.02,
            ),
            const TopSection(),
            SizedBox(
              height: height * 0.02,
            ),
            const OrdersSection(),
            SizedBox(
              height: height * 0.02,
            ),
            const WishlistSection(),
            SizedBox(
              height: height * 0.1,
            ),
          ],
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
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        RelicBazaarStackedView(
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
        // SectionHeader(title: "♥ WISHLIST"),
        const SizedBox(height: 20),
        Center(
          child: Stack(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width * 0.88 + 5,
                height: 216,
                decoration: const BoxDecoration(color: Colors.black),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
                width: MediaQuery.of(context).size.width * 0.87,
                height: 210,
                decoration:
                    const BoxDecoration(color: RelicColors.primaryColor),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    OrderItem(
                        title: 'EDI TURNTABLE',
                        ordered: 'by Tony Stark',
                        status: 'OUT OF STOCK',
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
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        RelicBazaarStackedView(
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
        const SizedBox(height: 20),
        Center(
          child: Stack(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width * 0.88 + 5,
                height: 330,
                decoration: const BoxDecoration(color: Colors.black),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
                width: MediaQuery.of(context).size.width * 0.87,
                decoration:
                    const BoxDecoration(color: RelicColors.primaryColor),
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
                  ],
                ),
                // child: Column(
                //   children: [
                //     OrderItem(
                //         title: "ANTIQUE VASE",
                //         ordered: "ORDERED 3 DAYS AGO",
                //         status: "STATUS : ON THE WAY",
                //         image: 'assets/items/3.png'),
                //     Divider(
                //       color: Colors.white,
                //     ),
                //     OrderItem(
                //         title: "TATUNG EINSTEIN",
                //         ordered: "ORDERED 3 WEEKS AGO",
                //         status: "ANTIQUE DELIVERED",
                //         image: 'assets/items/1.png',
                //         delivered: true),
                //   ],
                // ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class TopSection extends StatelessWidget {
  const TopSection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              height: 140,
              width: 140,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/person.png'),
                      fit: BoxFit.cover)),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const <Widget>[
                Text(
                  'Linus',
                  style: TextStyle(
                      fontSize: 48, fontFamily: 'Pixer', color: Colors.white),
                ),
                Text(
                  'Torvalds',
                  style: TextStyle(
                      fontSize: 36, fontFamily: 'Pixer', color: Colors.white),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'SHOPPER SINCE MAY 2020',
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
              ],
            ),
          ],
        ),
        Positioned(
          top: 0,
          right: 0,
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(RouteConstant.SETTINGS_SCREEN);
            },
            child: const RelicBazaarStackedView(
              upperColor: Colors.white,
              width: 35,
              height: 35,
              borderColor: Colors.white,
              child: Icon(
                Icons.settings,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
