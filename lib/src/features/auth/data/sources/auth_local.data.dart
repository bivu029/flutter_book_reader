import 'package:bookbazar/src/core/error/exception.dart';
import 'package:bookbazar/src/core/global/all.enitity.dart';

import 'package:hive/hive.dart';

class AuthLocalDataImp {
  final Box<User> box;
  AuthLocalDataImp({required this.box});
  Future<void> saveUser(String email, String idToken, String name,
      String? photoUrl, String accesstoken) async {
    try {
      User authModel =User(
        email: email,
        idToken: idToken,
        name: name,
        photoUrl: photoUrl,
        jwtToken: accesstoken,
      );

// Use a unique key for each entry if you want to retrieve it later by that key
      await box.put('user', authModel); //save user
    } catch (e) {
      throw CacheException(message: e.toString());
    }
  }

 User getLocalUser() {
    try {
      User? userdata = box.get('user');
      if (userdata == null) {
        throw const CacheException(message: "no user exist", statuscode: 500);
      }
      return userdata;
    } on CacheException {
      rethrow;
    } catch (e) {
      throw CacheException(message: e.toString());
    }
  }

  void closeHiveBox() async {
    try {
      await box.close();
    } catch (e) {
      throw CacheException(message: e.toString());
    }
  }
}
