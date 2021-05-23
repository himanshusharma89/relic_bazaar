import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthenticationService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  static Future<void> addUserToFirebase({
    String uid,
    String name,
    String email,
    String phoneNumber,
  }) async {
    return FirebaseFirestore.instance
        .collection('users')
        .doc(uid)
        .set(<String, String>{
      'uid': uid,
      'username': name,
      'email': email,
      'phoneNumber': phoneNumber
    });
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
    await addUserToFirebase(
        uid: user.uid, name: user.displayName, email: user.email);

    return '$user';
  }

  static Future<void> signOutGoogle() async {
    await GoogleSignIn().signOut();
  }

  Future<String> userSignUp({
    @required String email,
    @required String password,
    @required String name,
    @required String phoneNumber,
  }) async {
    try {
      final UserCredential newUser = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      final User user = newUser.user;
      await addUserToFirebase(
        uid: user.uid,
        name: name,
        email: user.email,
        phoneNumber: phoneNumber,
      );
    } on FirebaseAuthException catch (e) {
      String errorText;
      switch (e.code) {
        case 'email-already-in-use':
          errorText = 'This email is already in use.';
          break;
        case 'invalid-email':
          errorText = 'This email is invalid';
          break;
        case 'weak-password':
          errorText = 'Please use a strong password';
          break;
        default:
          errorText = 'Invalid request. Please try again later';
      }
      return errorText;
    }
    return null;
  }

  Future<String> userLogin({
    @required String email,
    @required String password,
  }) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      String errorTemp;
      switch (e.code) {
        case 'invalid-email':
          errorTemp = 'Invalid Email';
          break;
        case 'user-not-found':
          errorTemp = 'User Not Found';
          break;
        case 'wrong-password':
          errorTemp = 'Incorrect Password';
          break;
        default:
          errorTemp = 'Invalid request. Please try again later';
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
