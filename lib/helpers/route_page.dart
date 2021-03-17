import 'package:flutter/cupertino.dart';
import 'package:retro_shopping/dashboard.dart';
import 'package:retro_shopping/helpers/constants.dart';
import 'package:retro_shopping/helpers/slide_route.dart';

import 'package:retro_shopping/views/cart.dart';
import 'package:retro_shopping/views/home.dart';
import 'package:retro_shopping/views/profile.dart';
import 'package:retro_shopping/views/search.dart';
import 'package:retro_shopping/widgets/product/product_page.dart';

class RoutePage {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteConstant.CART_SCREEN:
        return SlideLeftRoute(
          page: Cart(),
        );

      case RouteConstant.HOME_SCREEN:
        return SlideLeftRoute(
          page: Home(),
        );
      case RouteConstant.LOGIN_SCREEN:
        return SlideLeftRoute(
          page: Container(
            child: Text('Login Screen'),
          ),
        );
      case RouteConstant.PROFILE_SCREEN:
        return SlideLeftRoute(
          page: ProfilePage(),
        );
      case RouteConstant.SEARCH_SCREEN:
        return SlideLeftRoute(
          page: Search(),
        );
      case RouteConstant.ABOUT_SCREEN:
        return SlideLeftRoute(
          page: Container(
            child: Text('About'),
          ),
        );
      case RouteConstant.DASHBOARD_SCREEN:
        return SlideLeftRoute(
          page: Dashboard(),
        );
      case RouteConstant.PRODUCTS_SCREEN:
        return SlideBottomRoute(
          page: ProductPage(),
        );
      case RouteConstant.WISHLIST_SCREEN:
        return SlideLeftRoute(
          page: Container(
            child: Text('Wishlist Screen'),
          ),
        );
      case RouteConstant.ORDERS_SCREEN:
        return SlideLeftRoute(
          page: Container(
            child: Text('Orders Screen'),
          ),
        );
      case RouteConstant.SETTINGS_SCREEN:
        return SlideLeftRoute(
          page: Container(
            child: Text('Settings Screen'),
          ),
        );

      default:
        return PageRouteBuilder(
          pageBuilder: (_, firstAni, secondAni) => Container(
            child: Text('Nothing'),
          ),
        );
    }
  }
}
