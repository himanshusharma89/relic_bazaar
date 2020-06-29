import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:retro_shopping/cart.dart';
import 'package:retro_shopping/home.dart';
import 'package:retro_shopping/splash.dart';
import 'ProfilePage.dart';
import 'bottom_nav_bar.dart';

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
        scaffoldBackgroundColor: const Color(0xff009d9d),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme
        )
      ),
      routes: <String, WidgetBuilder>{
        '/dashboard': (BuildContext context) => Dashboard(),
        // '/SignUp': (BuildContext context) => SignUpScreen(),
      },
      home: Splash(),
    );
  }
}

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  PageController _pageController;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: <Widget>[
            PageView(
              controller: _pageController,
              onPageChanged: (int index) {
                setState(() {
                  _currentIndex = index;
                });
              },
              children: [
                Home(),
                Container(
                  // color: Colors.teal,
                  child: Center(
                    child: Text('Search'),
                  ),
                ),
                Cart(),
                ProfilePage(),
              ],
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child: FloatingNavBar(_currentIndex, _pageController)),
          ],
        ),
      ),
    );
  }
}
