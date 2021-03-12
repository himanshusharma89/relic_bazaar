import 'package:flutter/material.dart';
import 'package:retro_shopping/views/profile.dart';

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
              MaterialPageRoute<Widget>(
                  builder: (BuildContext context) => ProfilePage()),
            );
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}
