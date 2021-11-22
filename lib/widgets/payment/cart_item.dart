import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:relic_bazaar/helpers/cart_total_controller.dart';
import 'package:relic_bazaar/helpers/constants.dart';
import 'package:relic_bazaar/model/product_model.dart';
import 'package:relic_bazaar/services/product_service.dart';
import 'package:relic_bazaar/widgets/retro_button.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shimmer/shimmer.dart';

class CartItem extends StatefulWidget {
  CartItem({required this.index, this.pageController});
  final String index;
  final PageController? pageController;
  @override
  _CartItemState createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  TextEditingController? controller;
  Product? product;
  int quantity = 1;
  int itemTotal = 0;
  CartTotalController _cartTotalController = Get.find<CartTotalController>();
  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
    controller!.text = '1';
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      child: FutureBuilder<Product>(
        future: ProductService().getProductDetails(widget.index),
        builder: (_ , AsyncSnapshot<Product> snapShot){
          if(snapShot.hasData){
            Product product = snapShot.data!;
            _cartTotalController.updateCartTotal(product.amount ?? 0);
            itemTotal = product.amount! * quantity;
            return Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Row(
                children: <Widget>[
                  RelicBazaarStackedView(
                    height: width * 0.3,
                    width: width * 0.3,
                    upperColor: Colors.white,
                    child: Image.asset(product.image!),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            product.text ?? 'Product Name',
                            style: const TextStyle(
                                fontSize: 21,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Text(
                            product.owner ?? 'Product owner',
                            style: const TextStyle(color: Colors.white),
                          ),
                          SizedBox(
                            height: height * 0.005,
                          ),
                          Container(
                            // width: 75,
                            // height: 25,
                            height: height * 0.04,
                            width: width * 0.25,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                boxShadow: <BoxShadow>[
                                  BoxShadow(
                                      offset: Offset(0, 4),
                                      blurRadius: 8,
                                      color: Colors.black26)
                                ]),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                GestureDetector(
                                  onTap: addQuantity,
                                  child: const Icon(Icons.add),
                                ),
                                Expanded(
                                    child: TextField(
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      readOnly: true,
                                      controller: controller,
                                      decoration: const InputDecoration(
                                          border: InputBorder.none,
                                          isDense: true,
                                          contentPadding: EdgeInsets.all(0)),
                                    )),
                                GestureDetector(
                                  onTap: subQuantity,
                                  child: const Icon(Icons.remove),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      IconButton(
                        onPressed: () async {
                          SharedPreferences prefs = await SharedPreferences.getInstance();
                          List<String> myCart = prefs.getStringList('myCart') ?? [];
                          myCart.remove(widget.index);
                          prefs.setStringList('myCart', myCart);
                          widget.pageController!.jumpToPage(0);
                          // widget.pageController!.jumpToPage(2);
                        },
                        icon: const Icon(Icons.delete) , color: RelicColors.warningColor,),
                      Text(
                        '₹ $itemTotal',
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white, fontSize: 17),
                      )
                    ],
                  ),

                ],
              ),
            );
          }
          return  Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 120.0,
                  height: 120.0,
                  child: Shimmer.fromColors(
                    baseColor: Colors.grey[300]!,
                    highlightColor: Colors.grey[100]!,
                    child: Container(
                      // width: 200.0,
                      // height: 100.0,
                      color: Colors.grey,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 5),
                      width: MediaQuery.of(context).size.width * 0.5,
                      height: 20.0,
                      child: Shimmer.fromColors(
                        baseColor: Colors.grey[300]!,
                        highlightColor: Colors.grey[100]!,
                        child: Container(
                          // width: 200.0,
                          // height: 100.0,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 5),
                      width: MediaQuery.of(context).size.width * 0.5,
                      height: 20.0,
                      child: Shimmer.fromColors(
                        baseColor: Colors.grey[300]!,
                        highlightColor: Colors.grey[100]!,
                        child: Container(
                          // width: 200.0,
                          // height: 100.0,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 5),
                      width: MediaQuery.of(context).size.width  * 0.5,
                      height: 20.0,
                      child: Shimmer.fromColors(
                        baseColor: Colors.grey[300]!,
                        highlightColor: Colors.grey[100]!,
                        child: Container(
                          // width: 200.0,
                          // height: 100.0,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );;

        },

      ),
    );
  }

  void subQuantity() {
    if (int.parse(controller!.text) > 1) {
        controller!.text = (int.parse(controller!.text) - 1).toString();
        setState(() {
          quantity = int.parse(controller!.text);
          print('quantity : $quantity');
        });
    }
  }

  void addQuantity() {
    if (int.parse(controller!.text) < 50) {
        controller!.text = (int.parse(controller!.text) + 1).toString();
        setState(() {
          quantity = int.parse(controller!.text);
          print('quantity : $quantity');
        });
    }
  }
}