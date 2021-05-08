import 'package:flutter/material.dart';
import 'package:relic_bazaar/helpers/constants.dart';
import 'package:relic_bazaar/widgets/retro_button.dart';
import 'package:relic_bazaar/widgets/text_field_decoration.dart';

class GetUserDetailsView extends StatefulWidget {
  @override
  _GetUserDetailsViewState createState() => _GetUserDetailsViewState();
}

class _GetUserDetailsViewState extends State<GetUserDetailsView> {
  @override
  Widget build(BuildContext context) {
    final double _height = MediaQuery.of(context).size.height;
    final double _width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: _height / 28,
                ),
                const Text(
                  'Please Enter Your Details',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: _height / 28,
                ),
                RelicBazaarStackedView(
                  upperColor: Colors.white,
                  height: _height * 0.2,
                  width: _width * 0.4,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.add_a_photo,
                      size: 40,
                    ),
                  ),
                ),
                SizedBox(
                  height: _height / 28,
                ),
                textFieldBuilder(
                  height: _height,
                  width: _width,
                  hintText: 'Enter your name',
                  keyboardType: TextInputType.name,
                  textInputAction: TextInputAction.next,
                ),
                SizedBox(
                  height: _height / 28,
                ),
                textFieldBuilder(
                  height: _height,
                  width: _width,
                  hintText: 'Phone number',
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.done,
                ),
                SizedBox(
                  height: _height / 10,
                ),
                RelicBazaarStackedView(
                  upperColor: Colors.white,
                  height: _height * 0.07,
                  width: _width * 0.4,
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(
                        RouteConstant.DASHBOARD_SCREEN,
                      );
                    },
                    child: const Text(
                      'Submit',
                      style: TextStyle(
                        color: Colors.black,
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

  Widget textFieldBuilder({
    double height,
    double width,
    String hintText,
    TextInputType keyboardType,
    TextInputAction textInputAction,
  }) {
    return RelicBazaarStackedView(
      height: height * 0.07,
      width: width * 0.7,
      child: TextField(
        keyboardType: keyboardType,
        textInputAction: textInputAction,
        decoration: textFieldDecoration(
          hintText: hintText,
        ),
      ),
    );
  }
}
