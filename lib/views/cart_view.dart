import 'package:flutter/material.dart';
import 'package:relic_bazaar/helpers/constants.dart';
import 'package:relic_bazaar/widgets/payment/cart_item.dart';
import 'package:relic_bazaar/widgets/payment/payment_window.dart';
import 'package:relic_bazaar/widgets/retro_button.dart';

class Cart extends StatefulWidget {
  const Cart({
    this.pageController,
    Key key,
  }) : super(key: key);

  final PageController pageController;

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
      ),
      child: ListView(
        children: <Widget>[
          SizedBox(
            height: height * 0.01,
          ),
          const Text(
            'Your Cart',
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
            textAlign: TextAlign.left,
          ),
          SizedBox(
            height: height * 0.01,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  setState(() {
                    widget.pageController.jumpTo(0);
                  });
                },
                child: RelicBazaarStackedView(
                  upperColor: Colors.white,
                  height: height * 0.045,
                  width: width * 0.4,
                  borderColor: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      Icon(
                        Icons.arrow_back,
                        size: 20,
                      ),
                      Text(
                        ' back to shop',
                        style: TextStyle(
                          fontFamily: 'pix M 8pt',
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: RelicColors.primaryBlack,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              RelicBazaarStackedView(
                upperColor: Colors.black,
                lowerColor: Colors.white,
                height: height * 0.045,
                width: width * 0.22,
                child: const Center(
                  child: Text(
                    '5 items',
                    style: TextStyle(
                      fontFamily: 'pix M 8pt',
                      fontSize: 15,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
          const Divider(
            color: Colors.white,
            thickness: 0.9,
          ),
          Column(
            children: <Widget>[
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return CartItem();
                },
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: PaymentWindow(),
              ),
              SizedBox(
                height: height * 0.08,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
