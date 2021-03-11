import 'package:flutter/material.dart';
import 'package:retro_shopping/helpers/constants.dart';

class ProductCard extends StatelessWidget {
  final String text;
  final String owner;
  final String amount;
  final String image;
  final String seller;
  final int height;

  ProductCard(
      {this.height,
      this.owner,
      this.text,
      this.seller,
      this.image,
      this.amount});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(
          RouteConstant.PRODUCTS_SCREEN,
          arguments: ProductCard(
            amount: amount,
            image: image,
            seller: seller,
            text: text,
            owner: owner,
            height: height,
          ),
        );
      },
      child: Container(
        width: 155.0,
        height: 257.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: RelicColors.primaryColor,
          border: Border.all(width: 1.0, color: RelicColors.primaryBlack),
          boxShadow: [
            BoxShadow(
              color: RelicColors.secondaryBlack,
              offset: Offset(0, 3),
              blurRadius: 6,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  height: 1,
                ),
                textAlign: TextAlign.left,
              ),
              Text(
                owner,
                style: TextStyle(
                  fontSize: 11,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  height: 1.5,
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                amount,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  height: 1,
                ),
                textAlign: TextAlign.left,
              ),
              Transform.translate(
                offset: Offset(16, 10),
                child: Image.asset(
                  image,
                  height: 154,
                  width: 154,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
