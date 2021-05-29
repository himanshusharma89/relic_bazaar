import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:provider/provider.dart';
import 'package:relic_bazaar/dashboard.dart';
import 'package:relic_bazaar/helpers/ad_state.dart';
import 'package:relic_bazaar/helpers/constants.dart';
import 'package:relic_bazaar/helpers/route_page.dart';
import 'package:relic_bazaar/views/auth/login_view.dart';
import 'package:relic_bazaar/views/get_user_details_view.dart';

import 'services/remote_config.dart';

RemoteConfigService _remoteConfigService;

Future<void> main() async {
  //firebase Initialization
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  //AdMob Initialization
  final Future<InitializationStatus> initFuture =
      MobileAds.instance.initialize();

  final AdState adState = AdState(initFuture);

  //Initialize remote config
  _remoteConfigService = await RemoteConfigService.getInstance();
  await _remoteConfigService.initialize();

  runApp(
    Provider<AdState>.value(
      value: adState,
      builder: (_, __) => MyApp(),
    ),
  );
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
          home: StreamBuilder<User>(
              stream: FirebaseAuth.instance.userChanges(),
              builder: (BuildContext context, AsyncSnapshot<User> snapshot) {
                if (snapshot.connectionState == ConnectionState.active) {
                  if (snapshot.hasData) {
                    if (snapshot.data.displayName == null) {
                      return GetUserDetailsView();
                    } else {
                      return Dashboard();
                    }
                  } else {
                    return LoginScreen();
                  }
                } else {
                  return const Scaffold(
                    body: Center(
                      child: CircularProgressIndicator(),
                    ),
                  );
                }
              }),
          title: 'Retro Shopping',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              // primarySwatch: Colors.blue,
              scaffoldBackgroundColor: RelicColors.backgroundColor,
              visualDensity: VisualDensity.adaptivePlatformDensity,
              textTheme:
                  GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)),
          onGenerateRoute: RoutePage.generateRoute,
        ));
  }
}

class CustomScrollBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}
