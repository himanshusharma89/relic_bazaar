import 'package:flutter/material.dart';
import 'package:retro_shopping/helpers/constants.dart';
import 'package:retro_shopping/views/orders.dart';
import 'package:retro_shopping/views/wishlist.dart';
import 'package:retro_shopping/widgets/retro_button.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    final width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: height * 0.02,
            ),
            TopSection(),
            SizedBox(
              height: height * 0.01,
            ),
            Divider(
              thickness: 2,
              color: Colors.white,
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => OrdersSection(),
                      ),
                    );
                  },
                  child: RetroButton(
                    child: Center(
                      child: Text(
                        'MY ORDERS',
                        style: TextStyle(
                          fontFamily: 'pix M 8pt',
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: RelicColors.backgroundColor,
                        ),
                        // textAlign: TextAlign.left,
                      ),
                    ),
                    upperColor: Colors.white,
                    lowerColor: Colors.black,
                    height: height * 0.046,
                    width: width * 0.35,
                    borderColor: Colors.white,
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => WishlistSection(),
                      ),
                    );
                  },
                  child: RetroButton(
                    child: Center(
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
                    upperColor: Colors.white,
                    lowerColor: Colors.black,
                    height: height * 0.046,
                    width: width * 0.35,
                    borderColor: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Divider(
              thickness: 2,
              color: Colors.white,
            ),
            SizedBox(
              height: height * 0.1,
            ),
          ],
        ),
      ),
    );
  }
}

class TopSection extends StatelessWidget {
  const TopSection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: 140,
          width: 140,
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
                    color: Colors.white),
              ),
            ],
          ),
        )
      ],
    );
  }
}
