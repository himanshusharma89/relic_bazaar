import 'package:flutter/material.dart';

import 'package:retro_shopping/views/cart.dart';
import 'package:retro_shopping/views/home.dart';
import 'package:retro_shopping/views/search.dart';
import 'views/profile.dart';
import 'widgets/bottom_nav_bar.dart';

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
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
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
                Search(),
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
