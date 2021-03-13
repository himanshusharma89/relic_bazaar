import 'package:flutter/material.dart';
import 'package:retro_shopping/widgets/home_page_view.dart';

class Home extends StatelessWidget {
final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      key: _drawerKey,
      // drawer: const DrawerWidget(),
      body: SingleChildScrollView(
          primary: true,
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: HomePageView(),
            ),
          )),
    );
  }
}