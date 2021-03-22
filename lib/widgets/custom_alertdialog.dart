import 'package:flutter/material.dart';

class AlertBox
{
  Future getAlertBox(BuildContext context, String errorMessage)
  {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(errorMessage),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                'Ok',
              ),
            ),
          ],
        );
      },
    );
  }
}