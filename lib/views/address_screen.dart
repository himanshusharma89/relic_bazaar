import 'package:flutter/material.dart';
import 'package:retro_shopping/helpers/constants.dart';
import 'package:retro_shopping/model/address.dart';
import 'package:retro_shopping/views/manage_address.dart';
import 'package:retro_shopping/views/settings.dart';
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
              Navigator.pushAndRemoveUntil(context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Settings();
                    },
                  ), (route) => false);

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
        title: Text("Manage Address"),
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
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
                      width: MediaQuery.of(context).size.width * 0.90- 2,
                      height: MediaQuery.of(context).size.height * 0.45 + 5,
                      decoration:
                      const BoxDecoration(color: RelicColors.primaryColor),
                      child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(height: 10,),
                              Stack(
                                children: <Widget>[
                                  Container(
                                    width: MediaQuery.of(context).size.width * 0.65 + 3,
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
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.vertical,
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
                                  ),
                                ],
                              ),
                            ],
                          )
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ManageAddress()));
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
                        children: [
                          Icon(Icons.add,color: Colors.black,),
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
