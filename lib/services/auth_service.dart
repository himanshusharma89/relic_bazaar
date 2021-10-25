import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthenticationService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  static Future<void> addUserToFirebase({
    String? uid,
    String? email,
  }) async {
    return FirebaseFirestore.instance
        .collection('users')
        .doc(uid)
        .set(<String, String?>{
      'uid': uid,
      'email': email,
    });
  }

  static Future<void> updateUserInFirebase({
    String? uid,
    String? userName,
    String? phoneNumber,
    String? imageUrl,
  }) async {
    return FirebaseFirestore.instance
        .collection('users')
        .doc(uid)
        .update(<String, String?>{
      'userName': userName,
      'phoneNumber': phoneNumber,
      'imageUrl': imageUrl
    });
  }

  static Future<String?> signInWithGoogle() async {
    try {
      final GoogleSignInAccount googleSignInAccount =
          await (GoogleSignIn().signIn() as FutureOr<GoogleSignInAccount>);
      final GoogleSignInAuthentication googleSignInAuthentication =
          await googleSignInAccount.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );

      final UserCredential authResult =
          await FirebaseAuth.instance.signInWithCredential(credential);
      final User user = authResult.user!;
      assert(!user.isAnonymous);

      final User currentUser = FirebaseAuth.instance.currentUser!;
      assert(user.uid == currentUser.uid);
      await addUserToFirebase(uid: user.uid, email: user.email);
      await updateUserInFirebase(
        uid: user.uid,
        imageUrl: user.photoURL,
        phoneNumber: user.phoneNumber,
        userName: user.displayName,
      );
      return null;
    } on FirebaseAuthException catch (e) {
      return e.message;
    } catch (e) {
      String? errorText;
      if (e.toString().contains(
          "NoSuchMethodError: The getter 'authentication' was called on null.")) {
        errorText = 'Sign In Cancelled By User';
      } else if (e.toString().contains('network_error')) {
        errorText = 'Please check your network connection.';
      }
      return errorText;
    }
  }

  static Future<void> signOutGoogle() async {
    await GoogleSignIn().signOut();
  }

  Future<String?> userSignUp({
    required String email,
    required String password,
  }) async {
    try {
      final UserCredential newUser = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      final User user = newUser.user!;
      await addUserToFirebase(
        uid: user.uid,
        email: user.email,
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

  Future<String?> userLogin({
    required String email,
    required String password,
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
    final User? user = _auth.currentUser;
    if (user != null) {
      await _auth.signOut();
    }
  }

  Future<void> logout() async {
    await userSignOut();
    await signOutGoogle();
  }
}
