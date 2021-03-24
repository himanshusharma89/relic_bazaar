import 'package:flutter/material.dart';
import 'package:retro_shopping/helpers/constants.dart';
import 'package:retro_shopping/widgets/payment/order_item.dart';
import 'package:retro_shopping/widgets/retro_button.dart';

class WishlistSection extends StatelessWidget {
  const WishlistSection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(color: RelicColors.backgroundColor),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: height * 0.01,
              ),
              Text(
                '♥ WISHLIST',
                style: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(
                height: height * 0.02,
              ),
              RetroButton(
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.arrow_back,
                        size: 20,
                      ),
                      Text(
                        ' Back to profile',
                        style: TextStyle(
                          decoration: TextDecoration.none,
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
                upperColor: Colors.white,
                lowerColor: Colors.black,
                height: height * 0.045,
                width: width * 0.34,
                borderColor: Colors.white,
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Divider(
                thickness: 0.9,
                color: Colors.white,
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
                      padding:
                          EdgeInsets.symmetric(vertical: 16, horizontal: 12),
                      width: MediaQuery.of(context).size.width * 0.87,
                      height: 210,
                      decoration:
                          BoxDecoration(color: RelicColors.primaryColor),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          OrderItem(
                            title: "EDI TURNTABLE",
                            ordered: "by Tony Stark",
                            status: "OUT OF STOCK",
                            image: 'assets/items/4.png',
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
        ),
      ),
    );
  }
}
