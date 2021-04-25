import 'package:flutter/material.dart';
import 'package:relic_bazaar/helpers/constants.dart';
import 'package:relic_bazaar/widgets/retro_button.dart';

class UnknownView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          primary: true,
          child: SizedBox(
            width: width,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: height * 0.01,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: const RelicBazaarStackedView(
                      upperColor: Colors.white,
                      width: 35,
                      height: 35,
                      borderColor: Colors.white,
                      child: Icon(Icons.arrow_back),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    'The page you are looking for is not found. Sorry for inconvenience 😕',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  Center(
                    heightFactor: 10,
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).pushReplacementNamed(
                          RouteConstant.DASHBOARD_SCREEN,
                        );
                      },
                      child: const RelicBazaarStackedView(
                        upperColor: Colors.white,
                        width: 250,
                        height: 50,
                        borderColor: Colors.white,
                        child: Text(
                          'Click here to get back to home.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
