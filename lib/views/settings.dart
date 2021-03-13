import 'package:flutter/material.dart';

import 'profile.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              // ignore: always_specify_types
              MaterialPageRoute(
                  builder: (BuildContext context) => ProfilePage()),
            );
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}
