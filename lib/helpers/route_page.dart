import 'package:flutter/cupertino.dart';
import 'package:relic_bazaar/dashboard.dart';
import 'package:relic_bazaar/helpers/constants.dart';
import 'package:relic_bazaar/helpers/slide_route.dart';
import 'package:relic_bazaar/model/product_model.dart';
import 'package:relic_bazaar/views/auth/signup_view.dart';
import 'package:relic_bazaar/views/get_user_details_view.dart';
import 'package:relic_bazaar/views/profile/orders.dart';
import 'package:relic_bazaar/views/change_username_password.dart';
import 'package:relic_bazaar/views/auth/login_view.dart';

import 'package:relic_bazaar/views/cart_view.dart';
import 'package:relic_bazaar/views/home_view.dart';
import 'package:relic_bazaar/views/profile/profile_view.dart';
import 'package:relic_bazaar/views/profile/settings/about.dart';
import 'package:relic_bazaar/views/profile/settings/address_screen.dart';
import 'package:relic_bazaar/views/profile/settings/faqs_screen.dart';
import 'package:relic_bazaar/views/profile/settings/manage_address.dart';
import 'package:relic_bazaar/views/profile/settings/notifications_toggle.dart';
import 'package:relic_bazaar/views/profile/settings/privacy_policy_screen.dart';
import 'package:relic_bazaar/views/profile/settings/settings_view.dart';
import 'package:relic_bazaar/views/profile/settings/github_webview.dart';
import 'package:relic_bazaar/views/profile/wishlist.dart';
import 'package:relic_bazaar/views/search_view.dart';
import 'package:relic_bazaar/views/terms_conditions_view.dart';
import 'package:relic_bazaar/views/unknown_view.dart';
import 'package:relic_bazaar/widgets/payment/payment_successful.dart';
import 'package:relic_bazaar/widgets/product/product_page.dart';

class RoutePage {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteConstant.CART_SCREEN:
        return SlideLeftRoute(
          page: const Cart(),
        );
      case RouteConstant.getUserDetailsView:
        return SlideLeftRoute(
          page: GetUserDetailsView(),
        );

      case RouteConstant.HOME_SCREEN:
        return SlideLeftRoute(
          page: const Home(),
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
        final Product product = settings.arguments as Product;
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
      case RouteConstant.privacyPolicyScreen:
        return SlideLeftRoute(
          page: PrivacyPolicyScreen(),
        );

      case RouteConstant.NOTIFICATIONS_TOGGLE_SCREEN:
        return SlideLeftRoute(
          page: NotificationToggle(),
        );

      default:
        return SlideLeftRoute(page: UnknownView());
    }
  }
}
