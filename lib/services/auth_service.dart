import 'package:sign_in_with_apple/sign_in_with_apple.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:retro_shopping/helpers/constants.dart';
import 'package:flutter/material.dart';

class AuthenticationService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  static Future<String> appleSignIn() async {
    try {
      final AuthorizationCredentialAppleID appleResult =
          await SignInWithApple.getAppleIDCredential(
        scopes: [
          AppleIDAuthorizationScopes.email,
          AppleIDAuthorizationScopes.fullName,
        ],
        // webAuthenticationOptions: WebAuthenticationOptions(
        //   clientId: <CLIENT_ID>,
        //   redirectUri: Uri.parse(
        //     <REDIRECT_URI>,
        //   ),
        // ),
      );

      final AuthCredential credential = OAuthProvider('apple.com').credential(
        idToken: appleResult.identityToken,
        accessToken: appleResult.authorizationCode,
      );

      final UserCredential firebaseResult =
          await FirebaseAuth.instance.signInWithCredential(credential);
      final User user = firebaseResult.user;
      assert(!user.isAnonymous);

      final User currentUser = FirebaseAuth.instance.currentUser;
      assert(user.uid == currentUser.uid);

      return '$user';
    } catch (e) {
      e.toString();
      return null;
    }
  }

  static Future<String> signInWithGoogle() async {
    final GoogleSignInAccount googleSignInAccount =
        await GoogleSignIn().signIn();
    final GoogleSignInAuthentication googleSignInAuthentication =
        await googleSignInAccount.authentication;

    final AuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleSignInAuthentication.accessToken,
      idToken: googleSignInAuthentication.idToken,
    );

    final UserCredential authResult =
        await FirebaseAuth.instance.signInWithCredential(credential);
    final User user = authResult.user;
    assert(!user.isAnonymous);

    final User currentUser = FirebaseAuth.instance.currentUser;
    assert(user.uid == currentUser.uid);

    return '$user';
  }

  static Future<void> signOutGoogle() async {
    await GoogleSignIn().signOut();
  }

  String userEmailValidation(String value, String errorMessage) {
    if (value.isEmpty) {
      return 'Required';
    } else if (errorMessage != null) {
      if (!errorMessage.contains('Password') ||
          errorMessage.contains('Invalid Request')) {
        return errorMessage;
      }
      return null;
    }
    return null;
  }

  String userPasswordValidation(String value, String errorMessage) {
    if (value.isEmpty) {
      return 'Required';
    } else if (errorMessage != null) {
      if (errorMessage.contains('Password') ||
          errorMessage.contains('Invalid Request')) {
        return errorMessage;
      }
      return null;
    }
    return null;
  }

  String userConfirmPasswordValidation(
      String value, String password, String confirmPassword) {
    if (value.isEmpty) {
      return 'Required';
    } else if (password != confirmPassword) {
      return 'Passwords Do Not Match';
    }
    return null;
  }

  Future<String> userSignUp(String errorText, BuildContext context,
      String email, String password) async {
    String errorTemp = errorText;
    try {
      final UserCredential newUser = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      if (newUser != null) {
        Navigator.of(context)
            .pushReplacementNamed(RouteConstant.DASHBOARD_SCREEN);
      }
    } catch (e) {
      if (e.toString().contains('invalid-email')) {
        errorTemp = 'Invalid Email';
      } else if (e.toString().contains('email-already-in-use')) {
        errorTemp = 'User Already Exists';
      } else if (e.toString().contains('weak-password')) {
        errorTemp = 'Password Too Short';
      } else {
        errorTemp = 'Invalid Request';
      }
      return errorTemp;
    }
    return null;
  }

  Future<String> userLogin(String errorText, BuildContext context, String email,
      String password) async {
    String errorTemp = errorText;
    try {
      final UserCredential existingUser = await _auth
          .signInWithEmailAndPassword(email: email, password: password);
      if (existingUser != null) {
        Navigator.of(context).pushReplacementNamed(
          RouteConstant.DASHBOARD_SCREEN,
        );
      }
    } catch (e) {
      if (e.toString().contains('invalid-email')) {
        errorTemp = 'Invalid Email';
      } else if (e.toString().contains('user-not-found')) {
        errorTemp = 'User Not Found';
      } else if (e.toString().contains('wrong-password')) {
        errorTemp = 'Incorrect Password';
      } else {
        errorTemp = 'Invalid Request';
      }
      return errorTemp;
    }
    return null;
  }

  Future<void> userSignOut() async {
    final User user = _auth.currentUser;
    if (user != null) {
      await _auth.signOut();
    }
  }

  Future<void> logout() async {
    await userSignOut();
    await signOutGoogle();
  }
}
