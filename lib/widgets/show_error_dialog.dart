import 'package:flutter/material.dart';
import 'package:relic_bazaar/helpers/constants.dart';
import 'package:relic_bazaar/widgets/retro_button.dart';

void showErrorDialog({
  @required String errorMessage,
  @required BuildContext context,
}) {
  showDialog(
    context: context,
    builder: (_) => AlertDialog(
      backgroundColor: RelicColors.primaryColor,
      title: Row(
        children: const <Widget>[
          Icon(
            Icons.error,
            size: 30,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            'Error',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      content: Text(
        errorMessage,
        style: const TextStyle(
          fontSize: 18,
        ),
      ),
      actions: <Widget>[
        RelicBazaarStackedView(
          upperColor: Colors.black,
          lowerColor: Colors.white,
          borderColor: Colors.white,
          height: 45,
          width: 90,
          child: TextButton(
            style: TextButton.styleFrom(primary: Colors.black),
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text(
              'Okay',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
