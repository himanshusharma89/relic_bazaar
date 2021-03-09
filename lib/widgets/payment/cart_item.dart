import 'package:flutter/material.dart';

class CartItem extends StatefulWidget {
  @override
  _CartItemState createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  TextEditingController controller = new TextEditingController();

  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
    controller.text = '1';
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Row(
        children: [
          Stack(
            children: [
              Transform.translate(
                offset: Offset(3.5, 4),
                child: Container(
                  height: 75,
                  width: 75,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    // image: DecorationImage(image: null)
                  ),
                ),
              ),
              Container(
                height: 75,
                width: 75,
                decoration: BoxDecoration(
                  color: Colors.white,
                  // image: DecorationImage(image: null)
                ),
              ),
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Product Name',
                    style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Text(
                    'Name',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    height: height * 0.005,
                  ),
                  Container(
                    width: 75,
                    height: 25,
                    decoration: BoxDecoration(color: Colors.white, boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 4),
                          blurRadius: 8,
                          color: Colors.black26)
                    ]),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          onTap: addQuantity,
                          child: Icon(Icons.add),
                        ),
                        Expanded(
                            child: TextField(
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                          readOnly: true,
                          controller: controller,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              isDense: true,
                              contentPadding: const EdgeInsets.all(0)),
                        )),
                        GestureDetector(
                          onTap: subQuantity,
                          child: Icon(Icons.remove),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Text(
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
