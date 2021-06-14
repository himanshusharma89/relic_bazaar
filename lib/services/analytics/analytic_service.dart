import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';
import 'package:flutter/cupertino.dart';

class AnalyticsService {

  final FirebaseAnalytics _analytics = FirebaseAnalytics();
  FirebaseAnalyticsObserver getAnalyticsObserver() =>
      FirebaseAnalyticsObserver(analytics: _analytics);

  //how to add analytics to a new screen?
  //create a Future async function
  //create an instance of analyticservice inside the required file like:
  // final AnalyticsService analyticsService = locator<AnalyticsService>();
  //call the function with required parameters
  Future logLogin({@required String userId}) async {
    await _analytics.logEvent(
        name: 'Login',
        parameters: <String,dynamic>{
          'userId': userId,
        });
  }
  Future loginError({@required String userId}) async {
    await _analytics.logEvent(
        name: 'LoginError',
        parameters: <String,dynamic>{
          'userId': userId,
        });
  }

  Future logSignUp({@required String userId}) async {
    await _analytics.logEvent(
        name: 'SignUp',
        parameters: <String,dynamic>{
          'userId': userId,
        });
  }

  Future logSignOut({@required String userId}) async {
    await _analytics.logEvent(
        name: "SignOut",
        parameters: <String,dynamic>{
          'userId': userId,
        });
  }

  Future backToShop({@required String userId}) async {
    await _analytics.logEvent(
        name: "BackToShop",
        parameters: <String,dynamic>{
          'userId': userId,
        }
    );
  }

  Future home({@required String userId}) async {
    await _analytics.logEvent(
        name: "Home",
        parameters: <String,dynamic>{
          'userId': userId,
        }
    );
  }

  Future search({@required String userId}) async {
    await _analytics.logEvent(
        name: "SearchScreen",
        parameters: <String,dynamic>{
          'userId': userId,
        }
    );
  }
  Future profilePage({@required String userId}) async {
    await _analytics.logEvent(
        name: "ProfilePage",
        parameters: <String,dynamic>{
          'userId': userId,
        }
    );
  }
  Future about({@required String userId}) async {
    await _analytics.logEvent(
        name: "About",
        parameters: <String,dynamic>{
          'userId': userId,
        }
    );
  }
  Future dashboard({@required String userId}) async {
    await _analytics.logEvent(
        name: "Dashboard",
        parameters: <String,dynamic>{
          'userId': userId,
        }
    );
  }
  Future productPage({@required String userId}) async {
    await _analytics.logEvent(
        name: "Product Page",
        parameters: <String,dynamic>{
          'userId': userId,
        }
    );
  }
  Future wishList({@required String userId}) async {
    await _analytics.logEvent(
        name: "Wishlist",
        parameters: <String,dynamic>{
          'userId': userId,
        }
    );
  }
  Future manageAddress({@required String userId}) async {
    await _analytics.logEvent(
        name: "Manage Address",
        parameters: <String,dynamic>{
          'userId': userId,
        }
    );
  }
  Future order({@required String userId}) async {
    await _analytics.logEvent(
        name: "Order",
        parameters: <String,dynamic>{
          'userId': userId,
        }
    );
  }
  Future changeUsername({@required String userId}) async {
    await _analytics.logEvent(
        name: "Change Usename",
        parameters: <String,dynamic>{
          'userId': userId,
        }
    );
  }
  Future settings({@required String userId}) async {
    await _analytics.logEvent(
        name: "Settings",
        parameters: <String, dynamic>{
          'userId': userId,
        }
    );
  }

  Future privacyPolicy({@required String userId}) async {
    await _analytics.logEvent(
        name: "Privacy Policy",
        parameters: <String,dynamic>{
          'userId': userId,
        }
    );
  }
  Future notification({@required String userId}) async {
    await _analytics.logEvent(
        name: "ToggleNotification",
        parameters: <String,dynamic>{
          'userId': userId,
        }
    );
  }
  Future termsAndConditions({@required String userId}) async {
    await _analytics.logEvent(
        name: "TermsConditions",
        parameters: <String,dynamic>{
          'userId': userId,
        }
    );
  }
  Future getUserDetails({@required String userId}) async {
    await _analytics.logEvent(
        name: "GetUserDetails",
        parameters: <String,dynamic>{
          'userId': userId,
        }
    );
  }
  Future faq({@required String userId}) async {
    await _analytics.logEvent(
        name: "FAQ",
        parameters: <String,dynamic>{
          'userId': userId,
        }
    );
  }
  Future successPayment({@required String userId}) async {
    await _analytics.logEvent(
        name: "SuccessfulPayment",
        parameters: <String,dynamic>{
          'userId': userId,
        }
    );
  }
  Future gitWebView({@required String userId}) async {
    await _analytics.logEvent(
        name: "GitWebView",
        parameters: <String,dynamic>{
          'userId': userId,
        }
    );
  }
  Future drawer({@required String userId}) async {
    await _analytics.logEvent(
        name: "MenuOpened",
        parameters: <String,dynamic>{
          'userId': userId,
        }
    );
  }
  Future visitCartClicked({@required String userId}) async {
    await _analytics.logEvent(
        name: "VisitCart",
        parameters: <String,dynamic>{
          'userId': userId,
        }
    );
  }
  Future cartScreen({@required String userId}) async {
    await _analytics.logEvent(
        name: "CartScreen",
        parameters: <String,dynamic>{
          'userId': userId,
        }
    );
  }
  Future setUserProperties({@required String userId}) async {
    await _analytics.setUserId(userId);
  }

}
