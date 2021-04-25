import 'package:flutter/material.dart';
import 'package:relic_bazaar/helpers/constants.dart';
import 'package:relic_bazaar/widgets/retro_button.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:fluttertoast/fluttertoast.dart';

class PaymentWindow extends StatefulWidget {
  @override
  _PaymentWindowState createState() => _PaymentWindowState();
}

class _PaymentWindowState extends State<PaymentWindow> {
  int cnt1, cnt2;
  final Razorpay _razorpay = Razorpay();
  @override
  void initState() {
    super.initState();
    cnt1 = 0;
    cnt2 = 0;
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
  }

  @override
  void dispose() {
    _razorpay.clear();
    super.dispose();
  }

  Future<void> _openCheckout() async {
    final Map<String, Object> options = <String, Object>{
      // Add valid key and other relevant options
      //test secret: cDNVLmTdSU8A0u9iQKzZKbAv
      'key': 'rzp_test_DmAGSfEISx8yQv',
      'external': <String, List<String>>{
        'wallets': <String>['paytm', 'gpay', 'bhim']
      }
    };

    try {
      _razorpay.open(options);
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  void refresh() {
    setState(() {});
  }

  Future<void> _handlePaymentSuccess(PaymentSuccessResponse response) async {
    Fluttertoast.showToast(msg: 'SUCCESS: ${response.paymentId}');
    Navigator.of(context).pushNamed(RouteConstant.PAYMENT_SUCCESSFULL);
  }

  void _handlePaymentError(PaymentFailureResponse response) {
    Fluttertoast.showToast(
        msg: 'ERROR: ${response.code} - ${response.message}');
  }

  void _handleExternalWallet(ExternalWalletResponse response) {
    Fluttertoast.showToast(msg: 'EXTERNAL_WALLET: ${response.walletName}');
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      height: height * 0.36,
      margin: const EdgeInsets.only(bottom: kBottomNavigationBarHeight),
      decoration: BoxDecoration(color: Colors.white, border: Border.all()),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const <Text>[
                  Text(
                    'CART TOTAL',
                    style: TextStyle(fontSize: 17),
                  ),
                  Text(
                    '₹35465',
                    style: TextStyle(fontSize: 17),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.002,
              ),
              const Divider(
                color: Colors.black,
                thickness: 1,
              ),
              SizedBox(
                height: height * 0.002,
              ),
              const Text(
                'SHIPPING',
                style: TextStyle(fontSize: 17),
              ),
              SizedBox(
                height: height * 0.005,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: height * 0.04,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  cnt2 = cnt2 + 1;
                                  cnt1 = 0;
                                });
                                if (cnt2 == 2) {
                                  setState(() {
                                    cnt2 = 0;
                                  });
                                }
                              },
                              child: Stack(
                                children: <Widget>[
                                  Container(
                                    height: height * 0.4,
                                    width: width * 0.08,
                                    // height: 30,
                                    // width: 30,
                                    decoration: BoxDecoration(
                                        color: cnt2 == 1
                                            ? Colors.teal
                                            : Colors.transparent,
                                        border: Border.all(color: Colors.grey)),
                                  ),
                                  if (cnt2 == 1)
                                    Transform.translate(
                                      offset: const Offset(2, -10),
                                      child: const Icon(
                                        Icons.check,
                                        color: Colors.black,
                                        size: 40,
                                      ),
                                    )
                                  else
                                    const SizedBox()
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: width * 0.7,
                            color: cnt2 == 1 ? Colors.black : Colors.grey[300],
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  FittedBox(
                                    child: Text(
                                      'Premium Next Day Shipping ',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: cnt2 == 1
                                            ? Colors.white
                                            : Colors.black,
                                      ),
                                    ),
                                  ),
                                  FittedBox(
                                    child: Text(
                                      '₹31',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: cnt2 == 1
                                            ? Colors.white
                                            : Colors.black,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    SizedBox(
                      height: height * 0.04,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  cnt1 = cnt1 + 1;
                                  cnt2 = 0;
                                });
                                if (cnt1 == 2) {
                                  setState(() {
                                    cnt1 = 0;
                                  });
                                }
                              },
                              child: Stack(
                                children: <Widget>[
                                  Container(
                                    height: height * 0.4,
                                    width: width * 0.08,
                                    // height: 30,
                                    // width: 30,
                                    decoration: BoxDecoration(
                                        color: cnt1 == 1
                                            ? Colors.teal
                                            : Colors.transparent,
                                        border: Border.all(color: Colors.grey)),
                                  ),
                                  if (cnt1 == 1)
                                    Transform.translate(
                                      offset: const Offset(2, -10),
                                      child: const Icon(
                                        Icons.check,
                                        color: Colors.black,
                                        size: 40,
                                      ),
                                    )
                                  else
                                    const SizedBox()
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: width * 0.7,
                            //width: width * 0.7,
                            color: cnt1 == 1 ? Colors.black : Colors.grey[300],
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  FittedBox(
                                    child: Text(
                                      'Basic Shipping',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: cnt1 == 1
                                            ? Colors.white
                                            : Colors.black,
                                      ),
                                    ),
                                  ),
                                  FittedBox(
                                    child: Text(
                                      '₹31',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: cnt1 == 1
                                            ? Colors.white
                                            : Colors.black,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(
                color: Colors.black,
                thickness: 0.9,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const <Text>[
                  Text(
                    'TOTAL',
                    style: TextStyle(fontSize: 17),
                  ),
                  Text(
                    '₹35131',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Center(
                child: InkWell(
                  onTap: () {
                    _openCheckout();
                  },
                  child: RelicBazaarStackedView(
                    upperColor: Colors.white,
                    height: height * 0.052,
                    width: width * 0.8,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[
                          Text(
                            'Payment & Address',
                            style: TextStyle(
                              fontFamily: 'pix M 8pt',
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: RelicColors.primaryBlack,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          Icon(Icons.arrow_forward),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
