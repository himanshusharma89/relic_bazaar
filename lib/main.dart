import 'package:flutter/material.dart';
import 'bottom_nav_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  PageController _pageController;
  int _currentIndex=0;

  @override
  void initState() {
    super.initState();
    _pageController=PageController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
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
              onPageChanged: (int index){
                setState(() {
                  _currentIndex = index;
                });
              },
              children: [
                Container(
                  color: Colors.red,
                  child: Center(
                    child: Text(
                      'Home'
                    ),
                  ),
                ),
                Container(
                  color: Colors.teal,
                  child: Center(
                    child: Text(
                      'Search'
                    ),
                  ),
                ),
                Container(
                  color: Colors.deepOrangeAccent,
                  child: Center(
                    child: Text(
                      'Cart'
                    ),
                  ),
                ),
                Container(
                  color: Colors.orangeAccent,
                  child: Center(
                    child: Text(
                      'Profile'
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom:8.0),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: FloatingNavBar(
                  _currentIndex,
                  _pageController
                )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
