import 'package:flutter/material.dart';
import 'package:retro_shopping/helpers/constants.dart';
import 'package:retro_shopping/model/address_model.dart';
import 'package:retro_shopping/widgets/retro_button.dart';

class AddressScreen extends StatefulWidget {
  @override
  _AddressScreenState createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: RelicColors.backgroundColor,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamedAndRemoveUntil(
                RouteConstant.SETTINGS_SCREEN,
                (Route<dynamic> route) => false,
              );
            },
            child: RetroButton(
              upperColor: Colors.white,
              lowerColor: Colors.black,
              width: 35,
              height: 35,
              borderColor: Colors.white,
              child: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
            ),
          ),
        ),
        title: const Text('Manage Address'),
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width * 0.89 + 15,
                      height: MediaQuery.of(context).size.height * 0.45 + 9,
                      decoration: const BoxDecoration(color: Colors.black),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 16, horizontal: 12),
                      width: MediaQuery.of(context).size.width * 0.90 - 2,
                      height: MediaQuery.of(context).size.height * 0.45 + 5,
                      decoration:
                          const BoxDecoration(color: RelicColors.primaryColor),
                      child: Column(
                        children: <Widget>[
                          const SizedBox(
                            height: 10,
                          ),
                          Stack(
                            children: <Widget>[
                              Container(
                                width:
                                    MediaQuery.of(context).size.width * 0.65 +
                                        3,
                                height: 220,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.black),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.65,
                                height: 220,
                                decoration: BoxDecoration(
                                    border: Border.all(),
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white),
                                child: Center(
                                    child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    address.toString(),
                                    style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                )),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .pushNamed(RouteConstant.MANAGE_ADDRESS_SCREEN);
                  },
                  child: RetroButton(
                    upperColor: Colors.white,
                    lowerColor: Colors.black,
                    height: height * 0.066,
                    width: width * 0.65,
                    borderColor: Colors.white,
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[
                          Icon(
                            Icons.add,
                            color: Colors.black,
                          ),
                          Text(
                            'Add Address',
                            style: TextStyle(
                              fontFamily: 'pix M 8pt',
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: RelicColors.backgroundColor,
                            ),
                            // textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
