import 'package:flutter/material.dart';

import 'profile.dart';

class Settings extends StatelessWidget {

import 'package:retro_shopping/helpers/constants.dart';
import 'package:retro_shopping/views/profile.dart';
import 'package:retro_shopping/widgets/retro_button.dart';

class Settings extends StatefulWidget {

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: const Text('Settings'),

        backgroundColor: RelicColors.backgroundColor,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: RetroButton(
              upperColor: Colors.white,
              lowerColor: Colors.black,
              width: 35,
              height: 35,
              borderColor: Colors.white,
              child: const Icon(Icons.arrow_back,color: Colors.black,),

            ),
          ),
        ),
        title: Text("Settings"),
        elevation: 0.0,

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

            Navigator.pop(context);

          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}
