import 'package:flutter/material.dart';
import 'package:relic_bazaar/widgets/retro_button.dart';

class CartItem extends StatefulWidget {
  @override
  _CartItemState createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  TextEditingController controller;

  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
    controller.text = '1';
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Row(
        children: <Widget>[
          RelicBazaarStackedView(
            height: width * 0.3,
            width: width * 0.3,
            upperColor: Colors.white,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    'Product Name',
                    style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  const Text(
                    'Name',
                    style: TextStyle(color: Colors.white),
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
          const Text(
            '₹65654',
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.white, fontSize: 17),
          )
        ],
      ),
    );
  }

  void subQuantity() {
    if (int.parse(controller.text) > 1) {
      controller.text = (int.parse(controller.text) - 1).toString();
    }
  }

  void addQuantity() {
    if (int.parse(controller.text) < 50) {
      controller.text = (int.parse(controller.text) + 1).toString();
    }
  }
}
