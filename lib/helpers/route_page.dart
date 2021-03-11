import 'package:flutter/cupertino.dart';
import 'package:retro_shopping/dashboard.dart';
import 'package:retro_shopping/helpers/constants.dart';
import 'package:retro_shopping/helpers/slide_route.dart';

import 'package:retro_shopping/views/cart.dart';
import 'package:retro_shopping/views/home.dart';
import 'package:retro_shopping/views/profile.dart';
import 'package:retro_shopping/views/search.dart';
import 'package:retro_shopping/widgets/product/product_page.dart';
import 'package:retro_shopping/widgets/splash.dart';

class RoutePage {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return PageRouteBuilder(
          settings: settings,
          pageBuilder: (_, firstAni, secondAni) => Splash(),
        );

      case RouteConstant.CART_SCREEN:
        return SlideLeftRoute(
          settings: settings,
          page: Cart(),
        );

      case RouteConstant.HOME_SCREEN:
        return SlideLeftRoute(
          settings: settings,
          page: Home(),
        );
      case RouteConstant.LOGIN_SCREEN:
        return SlideLeftRoute(
          settings: settings,
          page: Container(
            child: Text('Login Screen'),
          ),
        );
      case RouteConstant.PROFILE_SCREEN:
        return SlideLeftRoute(
          settings: settings,
          page: ProfilePage(),
        );
      case RouteConstant.SEARCH_SCREEN:
        return SlideLeftRoute(
          settings: settings,
          page: Search(),
        );
      case RouteConstant.ABOUT_SCREEN:
        return SlideLeftRoute(
          settings: settings,
          page: Container(
            child: Text('About'),
          ),
        );
      case RouteConstant.DASHBOARD_SCREEN:
        return SlideLeftRoute(
          settings: settings,
          page: Dashboard(),
        );
      case RouteConstant.PRODUCTS_SCREEN:
        return SlideBottomRoute(
          page: ProductPage(),
          settings: settings,
        );
      case RouteConstant.WISHLIST_SCREEN:
        return SlideLeftRoute(
          page: Container(
            child: Text('Wishlist Screen'),
          ),
          settings: settings,
        );
      case RouteConstant.ORDERS_SCREEN:
        return SlideLeftRoute(
          page: Container(
            child: Text('Orders Screen'),
          ),
          settings: settings,
        );
      case RouteConstant.SETTINGS_SCREEN:
        return SlideLeftRoute(
          page: Container(
            child: Text('Settings Screen'),
          ),
          settings: settings,
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
