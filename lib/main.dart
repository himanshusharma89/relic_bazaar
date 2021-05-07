import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:provider/provider.dart';
import 'package:relic_bazaar/dashboard.dart';
import 'package:relic_bazaar/helpers/ad_state.dart';
import 'package:relic_bazaar/helpers/constants.dart';
import 'package:relic_bazaar/helpers/route_page.dart';
import 'package:relic_bazaar/views/auth/login_view.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

import 'services/remote_config.dart';

RemoteConfigService _remoteConfigService;


Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
  print('Handling a background message ${message.messageId}');
}

const AndroidNotificationChannel channel = AndroidNotificationChannel(
  'high_importance_channel', // id
  'High Importance Notifications', // title
  'This channel is used for important notifications.', // description
  importance: Importance.high,
);

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
FlutterLocalNotificationsPlugin();

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
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  await flutterLocalNotificationsPlugin
      .resolvePlatformSpecificImplementation<
      AndroidFlutterLocalNotificationsPlugin>()
      ?.createNotificationChannel(channel);

  runApp(
    Provider<AdState>.value(
      value: adState,
      builder: (_, __) => MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  String token;

  @override
  void initState() {
    super.initState();
    var initialzationSettingsAndroid =
    AndroidInitializationSettings('@mipmap/ic_launcher');
    var initializationSettings =
    InitializationSettings(android: initialzationSettingsAndroid);

    flutterLocalNotificationsPlugin.initialize(initializationSettings);

    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      RemoteNotification notification = message.notification;
      AndroidNotification android = message.notification?.android;
      if (notification != null && android != null) {
        flutterLocalNotificationsPlugin.show(
            notification.hashCode,
            notification.title,
            notification.body,
            NotificationDetails(
              android: AndroidNotificationDetails(
                channel.id,
                channel.name,
                channel.description,
                icon: android?.smallIcon,
              ),
            ));
      }
    });
    getToken();
  }
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
              stream: FirebaseAuth.instance.authStateChanges(),
              builder: (BuildContext context, AsyncSnapshot<User> snapshot) {
                if (snapshot.connectionState == ConnectionState.active) {
                  final bool isloggedin = snapshot.hasData;
                  if (isloggedin == true) {
                    return Dashboard(uid: snapshot.data.uid);
                  } else {
                    //print("here");
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
  getToken() async {
    token = await FirebaseMessaging.instance.getToken();
    setState(() {
      token = token;
    });
    print(token);
  }
}

class CustomScrollBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}
