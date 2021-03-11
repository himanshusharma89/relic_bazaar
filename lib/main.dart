import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:retro_shopping/helpers/constants.dart';
import 'package:retro_shopping/helpers/route_page.dart';

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
        scaffoldBackgroundColor: RelicColors.backgroundColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      initialRoute: '/',
      onGenerateRoute: RoutePage.generateRoute,
    );
  }
}
