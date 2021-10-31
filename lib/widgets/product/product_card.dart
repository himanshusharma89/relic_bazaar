import 'package:flutter/material.dart';
import 'package:relic_bazaar/helpers/constants.dart';
import 'package:relic_bazaar/model/product_model.dart';

class ProductCard extends StatefulWidget {
  const ProductCard({Key? key, this.product}) : super(key: key);
  final Product? product;

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(
          RouteConstant.PRODUCTS_SCREEN,
          arguments: widget.product,
        );
      },
      child: Container(
        width: 155.0,
        height: 257.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: RelicColors.primaryColor,
          border: Border.all(color: RelicColors.primaryBlack),
          boxShadow: <BoxShadow>[
            const BoxShadow(
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
                widget.product!.text!,
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  height: 1,
                ),
                textAlign: TextAlign.left,
              ),
              Text(
                widget.product!.owner!,
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
                widget.product!.amount!,
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  height: 0.2,
                ),
                textAlign: TextAlign.left,
              ),
              Container(
                height: height * 1 / 6,
                width: width * 1 / 3,
                child: Transform.translate(
                  offset: const Offset(16, 10),
                  child: Image.asset(
                    widget.product!.image!,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
