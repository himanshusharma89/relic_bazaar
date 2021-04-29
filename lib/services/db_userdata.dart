import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:relic_bazaar/model/user_model.dart';

class DbUserData {
  static final DbUserData _singleton = new DbUserData._internal();
  DbUserData._internal();
  static DbUserData get instance => _singleton;

  UserModel user ;
  
  //used to fetch user information from firebase
  Future<UserModel> fetchData(String uid) async {
    try {
      await FirebaseFirestore.instance
          .collection('users')
          .doc(uid)
          .get()
          .then((value) {
        user = UserModel(name: value.get('username').toString(), email: value.get('email').toString());
        print("hii "+user.name);
      });
    } catch (e) {
      print(e);
    }
    return user;
  }
}
