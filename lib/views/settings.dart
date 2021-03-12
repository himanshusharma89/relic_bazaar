import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
             Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => ProfilePage()),
  );
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}
