import 'package:flutter/material.dart';
import 'package:relic_bazaar/helpers/constants.dart';
import 'package:relic_bazaar/model/address_model.dart';
import 'package:relic_bazaar/widgets/back_button.dart';
import 'package:relic_bazaar/widgets/retro_button.dart';

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
        centerTitle: true,
        backgroundColor: RelicColors.backgroundColor,
        leading: appBarBackButton(context),
        title: const Text('Manage Address'),
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              RelicBazaarStackedView(
                upperColor: Colors.white,
                width: width * 0.9,
                height: height * 0.1,
                child: Center(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    address.toString() ?? 'User Address',
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )),
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .pushNamed(RouteConstant.MANAGE_ADDRESS_SCREEN);
                },
                child: RelicBazaarStackedView(
                  upperColor: Colors.white,
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
    );
  }
}
