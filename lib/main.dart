import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:retro_shopping/helpers/constants.dart';
import 'package:retro_shopping/widgets/splash.dart';
import 'dashboard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Retro Shopping',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          // primarySwatch: Colors.blue,
          scaffoldBackgroundColor: RelicColors.backgroundColor,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          
          textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)),
      routes: <String, WidgetBuilder>{
        '/dashboard': (BuildContext context) => Dashboard(),
      },
      home: Splash(),
    );
  }
}
