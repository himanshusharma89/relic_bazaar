import 'package:flutter/material.dart';
import 'package:retro_shopping/retro_button.dart';

class Cart extends StatelessWidget {
  Cart({ Key key,}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: height*0.86,
          width: width,
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: height*0.01,),
                    Text(
                      'Your Cart',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 30,
                        color: const Color(0xffffffff),
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(height: height*0.01,),
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
                                  color: const Color(0xff181818),
                                ),
                                // textAlign: TextAlign.left,
                              ),
                            ],
                          ),
                          upperColor: Colors.white,
                          lowerColor: Colors.black,
                          height: height*0.045,
                          width: width*0.34,
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
                          height: height*0.045,
                          width: width*0.22,
                          borderColor: Colors.black,
                        ),
                      ],
                    ),
                    SizedBox(height: height*0.01,),
                    Divider(
                      thickness: 0.9,
                      color: Colors.white,
                    ),
                    SizedBox(height: height*0.01,),
                    Container(
                      height: height*0.335,
                      child: ListView.builder(
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return cartItem(context);
                        },
                      ),
                    )
                  ],
                ),
              ),
              Align(alignment: Alignment.bottomCenter, child: payment(context)),
            ],
          ),
        ),
      ),
    );
  }
  Widget cartItem(BuildContext context){
    final height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.only(bottom:10.0),
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
                      color: Colors.white
                    ),
                  ),
                  Text(
                    'Name',
                    style: TextStyle(
                      color: Colors.white
                    ),
                  ),
                  SizedBox(height: height*0.005,),
                  Container(
                    width: 75,
                    height: 25,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 4),
                          blurRadius: 8,
                          color: Colors.black26
                        )
                      ]
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Icons.add
                        ),
                        Text(
                          '5',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        Icon(
                          Icons.remove
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
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 17
            ),
          )
        ],
      ),
    );
  }

  Widget payment(BuildContext context){
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      height: height*0.36,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.black
        )
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22,vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'CART TOTAL',
                  style: TextStyle(
                    fontSize: 17
                  ),
                ),
                Text(
                  '₹35465',
                  style: TextStyle(
                    fontSize: 17
                  ),
                ),
              ],
            ),
            SizedBox(height: height*0.002,),
            Divider(
              color: Colors.black,
              thickness: 1,
            ),
            SizedBox(height: height*0.002,),
            Text(
              'SHIPPING',
              style: TextStyle(
                    fontSize: 17
                  ),
            ),
            SizedBox(height: height*0.005,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 5),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          
                        },
                        child: Container(
                          height: 30,width: 30,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey
                            )
                          ),
                        ),
                      ),
                      Container(
                        width: width*0.7,
                        color: Colors.grey[300],
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Premium Next Day Shipping ',
                                style: TextStyle(
                                  fontSize: 16
                                ),
                              ),
                              Text(
                                '₹31',
                                style: TextStyle(
                                  fontSize: 16
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: height*0.01,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 30,width: 30,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey
                          )
                        ),
                      ),
                      Container(
                        width: width*0.7,
                        color: Colors.grey[300],
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Premium Next Day Shipping ',
                                style: TextStyle(
                                  fontSize: 16
                                ),
                              ),
                              Text(
                                '₹31',
                                style: TextStyle(
                                  fontSize: 16
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.black,
              thickness: 0.9,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'TOTAL',
                  style: TextStyle(
                    fontSize: 17
                  ),
                ),
                Text(
                  '₹35131',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ],
            ),
            SizedBox(height: height*0.01,),
            Center(
              child: RetroButton(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Payment & Address',
                        style: TextStyle(
                          fontFamily: 'pix M 8pt',
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xff181818),
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Icon(
                        Icons.arrow_forward
                      ),
                    ],
                  ),
                ),
                upperColor: Colors.white,
                lowerColor: Colors.black,
                height: height*0.052,
                width: width*0.8,
                borderColor: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}