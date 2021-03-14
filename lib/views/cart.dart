import 'package:flutter/material.dart';
import 'package:retro_shopping/helpers/constants.dart';
import 'package:retro_shopping/widgets/payment/cart_item.dart';
import 'package:retro_shopping/widgets/payment/payment_window.dart';
import 'package:retro_shopping/widgets/retro_button.dart';

class Cart extends StatefulWidget {
  const Cart({
    Key key,
  }) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Stack(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                  RetroButton(
                    upperColor: Colors.white,
                    lowerColor: Colors.black,
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
                          // textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  ),
                  RetroButton(
                    upperColor: Colors.black,
                    lowerColor: Colors.white,
                    height: height * 0.045,
                    width: width * 0.22,
                    borderColor: Colors.black,
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
              SizedBox(
                height: height * 0.01,
              ),
              const Divider(
                thickness: 0.9,
                color: Colors.white,
              ),
              SizedBox(
                height: height * 0.01,
              ),
              SizedBox(
                height: height * 0.335,
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return CartItem();
                  },
                ),
              )
            ],
          ),
        ),
        Align(alignment: Alignment.bottomCenter, child: PaymentWindow()),
      ],
    );
  }
}
