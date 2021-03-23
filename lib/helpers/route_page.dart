import 'package:flutter/cupertino.dart';
import 'package:retro_shopping/dashboard.dart';
import 'package:retro_shopping/helpers/constants.dart';
import 'package:retro_shopping/helpers/slide_route.dart';

import 'package:retro_shopping/views/cart_view.dart';
import 'package:retro_shopping/views/home_view.dart';
import 'package:retro_shopping/views/profile/profile_view.dart';
import 'package:retro_shopping/views/profile/settings/settings_view.dart';
import 'package:retro_shopping/views/search_view.dart';

import 'package:retro_shopping/widgets/product/product_page.dart';

class RoutePage {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteConstant.CART_SCREEN:
        return SlideLeftRoute(
          page: const Cart(),
        );

      case RouteConstant.HOME_SCREEN:
        return SlideLeftRoute(
          page: Home(),
        );

      case RouteConstant.LOGIN_SCREEN:
        return SlideLeftRoute(
          page: const SizedBox(
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
          page: const SizedBox(
            child: Text('About'),
          ),
        );

      case RouteConstant.DASHBOARD_SCREEN:
        return SlideLeftRoute(
          page: Dashboard(),
        );
      case RouteConstant.PRODUCTS_SCREEN:
        return SlideBottomRoute(
          settings: settings,
          page: ProductPage(),
        );

      case RouteConstant.WISHLIST_SCREEN:
        return SlideLeftRoute(
          page: const SizedBox(
            child: Text('Wishlist Screen'),
          ),
        );

      case RouteConstant.ORDERS_SCREEN:
        return SlideLeftRoute(
          page: const SizedBox(
            child: Text('Orders Screen'),
          ),
        );

      case RouteConstant.SETTINGS_SCREEN:
        return SlideLeftRoute(
          page: Settings(),
        );
      //TODO: Needs to have a separate screen for this
      default:
        return PageRouteBuilder<dynamic>(
          pageBuilder:
              (_, Animation<double> firstAni, Animation<double> secondAni) =>
                  const SizedBox(
            child: Text('Nothing'),
          ),
        );
    }
  }
}
