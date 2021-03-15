import 'package:flutter/material.dart';
import 'package:retro_shopping/helpers/constants.dart';
import 'package:retro_shopping/helpers/slide_route.dart';
import 'package:retro_shopping/model/product.dart';
import 'package:retro_shopping/widgets/product/product_page.dart';

class ProductCard extends StatelessWidget {
  const ProductCard(
      {Key key,
      this.product})
      : super(key: key);
  final Product product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            SlideBottomRoute(
                page: ProductPage(
              text: product.text,
              owner: product.owner,
              image: product.image,
              prodHeight: product.height,
              seller: product.seller,
              amount: product.amount,
            )));
      },
      child: Container(
        width: 155.0,
        height: 257.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: RelicColors.primaryColor,
          border: Border.all(color: RelicColors.primaryBlack),
          boxShadow: const <BoxShadow>[
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
            children: <Widget>[
              Text(
                product.text,
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  height: 1,
                ),
                textAlign: TextAlign.left,
              ),
              Text(
                product.owner,
                style: const TextStyle(
                  fontSize: 11,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  height: 1.3,
                ),
                textAlign: TextAlign.left,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                product.amount,
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  height: 0.2,
                ),
                textAlign: TextAlign.left,
              ),
              Transform.translate(
                offset: const Offset(16, 10),
                child: Image.asset(
                  product.image,
                  height: 148,
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
