import 'package:flutter/material.dart';
import 'package:retro_shopping/helpers/constants.dart';
import 'package:retro_shopping/widgets/payment/cart_item.dart';
import 'package:retro_shopping/widgets/payment/payment_window.dart';
import 'package:retro_shopping/widgets/retro_button.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Text(
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
                    children: [
                      RetroButton(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
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
                        upperColor: Colors.white,
                        lowerColor: Colors.black,
                        height: height * 0.045,
                        width: width * 0.34,
                        borderColor: Colors.white,
                      ),
                      RetroButton(
                        child: Center(
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
                        upperColor: Colors.black,
                        lowerColor: Colors.white,
                        height: height * 0.045,
                        width: width * 0.22,
                        borderColor: Colors.black,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Divider(
                    thickness: 0.9,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Container(
                    height: height * 0.335,
                    child: ListView.builder(
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return CartItem();
                      },
                    ),
                  )
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: PaymentWindow(),
            ),
          ],
        ),
      ),
    );
  }
}
