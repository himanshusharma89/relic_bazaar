import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:retro_shopping/helpers/constants.dart';
import 'package:retro_shopping/widgets/splash.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'dashboard.dart';

Future<void> main() async {
  //firebase Initialization
  WidgetsFlutterBinding.ensureInitialized();
  //AdMob Initialization
  MobileAds.instance.initialize();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus &&
            currentFocus.focusedChild != null) {
          FocusManager.instance.primaryFocus.unfocus();
        }
      },
      child: MaterialApp(
        builder: (BuildContext context, Widget child) {
          return ScrollConfiguration(
            behavior: CustomScrollBehavior(),
            child: child,
          );
        },
        title: 'Retro Shopping',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            // primarySwatch: Colors.blue,
            scaffoldBackgroundColor: RelicColors.backgroundColor,
            visualDensity: VisualDensity.adaptivePlatformDensity,
            textTheme:
                GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)),
        routes: <String, WidgetBuilder>{
          '/dashboard': (BuildContext context) => Dashboard(),
        },
        home: Splash(),
      ),
    );
  }
}

class CustomScrollBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}
