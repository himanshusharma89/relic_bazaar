import 'package:flutter/material.dart';
import 'package:relic_bazaar/helpers/app_icons.dart';
import 'package:relic_bazaar/helpers/constants.dart';
import 'package:relic_bazaar/model/user_model.dart';
import 'package:relic_bazaar/services/product_service.dart';
import 'package:relic_bazaar/views/drawer_view.dart';
import 'package:relic_bazaar/widgets/product/product_card.dart';
import 'package:relic_bazaar/widgets/retro_button.dart';
import 'package:relic_bazaar/widgets/search_bar.dart';

class Home extends StatefulWidget {
  const Home({this.pageController, this.user});

  final PageController pageController;
  final UserModel user;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

  void _openDrawer() {
    _drawerKey.currentState.openDrawer();
  }

  void _goToCart() {
    setState(() {
      widget.pageController.jumpToPage(2);
    });
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      key: _drawerKey,
      drawer: DrawerWidget(
        pageController: widget.pageController,
      ),
      body: SingleChildScrollView(
          primary: true,
          child: SizedBox(
            width: width,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: height * 0.01,
                  ),
                  topBar(context),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  greetingUserText(),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  searchBar(context),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  products(height, width),
                  SizedBox(
                    height: height * 0.1,
                  ),
                ],
              ),
            ),
          )),
    );
  }

  Widget products(double height, double width) {
    final ProductService productService = ProductService();
    return SizedBox(
      height: height * 1.08,
      width: width,
      child: FutureBuilder<List<ProductCard>>(
        future: productService.getProducts(),
        builder: (_, AsyncSnapshot<List<ProductCard>> snapshot) {
          if (snapshot.data != null) {
            return RelicBazaarStackedView(
              width: width * 0.9,
              // height: 729.0,
              upperColor: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  primary: false,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 8,
                      childAspectRatio: 1 / 1.6),
                  itemCount: snapshot.data.length,
                  itemBuilder: (_, int index) => snapshot.data[index],
                ),
              ),
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }

  Widget topBar(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              _openDrawer();
            },
            child: const RelicBazaarStackedView(
              upperColor: Colors.white,
              width: 35,
              height: 35,
              borderColor: Colors.white,
              child: Icon(Icons.menu),
            ),
          ),
          GestureDetector(
            onTap: _goToCart,
            child: const RelicBazaarStackedView(
              upperColor: Colors.white,
              width: 35,
              height: 35,
              borderColor: Colors.white,
              child: Padding(
                padding: EdgeInsets.only(top: 7, left: 6),
                child: Icon(
                  RelicIcons.cart,
                  size: 32,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget greetingUserText() {
    return Text.rich(
      TextSpan(
        style: const TextStyle(
          fontFamily: 'pixer',
          fontSize: 16,
          color: Colors.white,
          height: 1.3829787234042554,
          shadows: <Shadow>[
            Shadow(
              color: RelicColors.secondaryBlack,
              offset: Offset(0, 3),
              blurRadius: 6,
            )
          ],
        ),
        children: <TextSpan>[
          const TextSpan(
            text: 'GOOD EVENING,\n',
          ),
          TextSpan(
            text: widget.user.name.toString(),
            style: const TextStyle(
              fontFamily: 'Pixer',
              fontSize: 47,
            ),
          ),
        ],
      ),
      textAlign: TextAlign.left,
    );
  }
}
