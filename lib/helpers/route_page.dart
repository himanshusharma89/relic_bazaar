import 'package:flutter/cupertino.dart';
import 'package:retro_shopping/dashboard.dart';
import 'package:retro_shopping/helpers/constants.dart';
import 'package:retro_shopping/helpers/slide_route.dart';
import 'package:retro_shopping/model/product_model.dart';
import 'package:retro_shopping/views/auth/signup_view.dart';
import 'package:retro_shopping/views/profile/orders.dart';
import 'package:retro_shopping/views/change_username_password.dart';
import 'package:retro_shopping/views/auth/login_view.dart';

import 'package:retro_shopping/views/cart_view.dart';
import 'package:retro_shopping/views/home_view.dart';
import 'package:retro_shopping/views/profile/profile_view.dart';
import 'package:retro_shopping/views/profile/settings/about.dart';
import 'package:retro_shopping/views/profile/settings/address_screen.dart';
import 'package:retro_shopping/views/profile/settings/faqs_screen.dart';
import 'package:retro_shopping/views/profile/settings/manage_address.dart';
import 'package:retro_shopping/views/profile/settings/settings_view.dart';
import 'package:retro_shopping/views/profile/settings/github_webview.dart';
import 'package:retro_shopping/views/profile/wishlist.dart';
import 'package:retro_shopping/views/search_view.dart';
import 'package:retro_shopping/views/terms_conditions_view.dart';
import 'package:retro_shopping/views/unknown_view.dart';
import 'package:retro_shopping/widgets/payment/payment_successful.dart';
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
          page: LoginScreen(),
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
          page: AboutScreen(),
        );

      case RouteConstant.DASHBOARD_SCREEN:
        return SlideLeftRoute(
          page: Dashboard(),
        );
      case RouteConstant.PRODUCTS_SCREEN:
        Product product = settings.arguments as Product;
        return SlideBottomRoute(
          page: ProductPage(
            product: product,
          ),
        );

      case RouteConstant.WISHLIST_SCREEN:
        return SlideLeftRoute(
          page: const Wishlist(),
        );
      case RouteConstant.MANAGE_ADDRESS_SCREEN:
        return SlideLeftRoute(
          page: ManageAddress(),
        );

      case RouteConstant.ORDERS_SCREEN:
        return SlideLeftRoute(
          page: Order(),
        );

      case RouteConstant.SETTINGS_SCREEN:
        return SlideLeftRoute(
          page: Settings(),
        );
      case RouteConstant.PAYMENT_SUCCESSFULL:
        return SlideLeftRoute(
          page: const PaymentSuccessful(),
        );
      case RouteConstant.FAQs_SCREEN:
        return SlideLeftRoute(
          page: FaqsScreen(),
        );
      case RouteConstant.CHANGE_USERNAME_SCREEN:
        return SlideLeftRoute(
          page: ChangeUsername(),
        );
      case RouteConstant.ADDRESS_SCREEN:
        return SlideLeftRoute(
          page: AddressScreen(),
        );
      case RouteConstant.SIGN_UP_SCREEN:
        return SlideLeftRoute(
          page: SignUpScreen(),
        );
      case RouteConstant.TERMS_CONDITIONS:
        return SlideLeftRoute(
          page: TermsConditionsView(),
        );
      case RouteConstant.GITHUB_REPO_LINK:
        return SlideLeftRoute(
          page: GithubWebView(),
        );
      
      default:
        return SlideLeftRoute(page: UnknownView());
    }
  }
}
