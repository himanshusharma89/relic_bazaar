import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:relic_bazaar/model/user_model.dart';
import 'package:relic_bazaar/services/auth_service.dart';

class CloudStorageService {
  final FirebaseStorage _storage = FirebaseStorage.instance;
  Future<String> uploadFile(File file, UserModel user) async {
    try {
      await _storage
          .ref('user-profile-images/${user.uid}/profile-image/')
          .putFile(file);
      await getImageUrlAndUpdateUser(user);
      return null;
    } on FirebaseException catch (e) {
      return e.message;
    }
  }

  Future<void> getImageUrlAndUpdateUser(UserModel user) async {
    final String _downloadUrl = await _storage
        .ref('user-profile-images/${user.uid}/profile-image/')
        .getDownloadURL();
    AuthenticationService.updateUserInFirebase(
      uid: user.uid,
      userName: user.name,
      phoneNumber: user.phoneNumber,
      imageUrl: _downloadUrl,
    );
  }
}
