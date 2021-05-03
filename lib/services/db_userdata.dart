import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:relic_bazaar/model/user_model.dart';

class DbUserData {
  DbUserData._internal();

  static final DbUserData _singleton = DbUserData._internal();
  static DbUserData get instance => _singleton;

  UserModel user;

  //used to fetch user information from firebase
  Future<UserModel> fetchData(String uid) async {
    try {
      await FirebaseFirestore.instance
          .collection('users')
          .doc(uid)
          .get()
          .then((DocumentSnapshot value) {
        user = UserModel(
            name: value.get('username').toString(),
            email: value.get('email').toString());
        debugPrint('hii ${user.name}');
      });
    } catch (e) {
      debugPrint(e.toString());
    }
    return user;
  }
}
