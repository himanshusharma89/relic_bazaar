import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:relic_bazaar/helpers/constants.dart';
import 'package:flutter/material.dart';

class AuthenticationService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  static Future<void> addUserToFirebase(
      String uid, String name, String email) async {
    return FirebaseFirestore.instance
        .collection('users')
        .doc(uid)
        .set({'uid': uid, 'username': name, 'email': email});
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
    await addUserToFirebase(user.uid, user.displayName, user.email);

    return '$user';
  }

  static Future<void> signOutGoogle() async {
    await GoogleSignIn().signOut();
  }

  Future<String> userSignUp({
    @required BuildContext context,
    @required String email,
    @required String password,
  }) async {
    try {
      final UserCredential newUser = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      final User user = newUser.user;
      await addUserToFirebase(user.uid, user.displayName, user.email);
      if (newUser != null) {
        Navigator.of(context).pushReplacementNamed(
          RouteConstant.getUserDetailsView,
        );
      }
    } catch (e) {
      String errorTemp;
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

  Future<String> userLogin({
    @required BuildContext context,
    @required String email,
    @required String password,
  }) async {
    try {
      final UserCredential existingUser = await _auth
          .signInWithEmailAndPassword(email: email, password: password);
      if (existingUser != null) {
        Navigator.of(context).pushReplacementNamed(
          RouteConstant.DASHBOARD_SCREEN,
        );
      }
    } catch (e) {
      String errorTemp;
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
