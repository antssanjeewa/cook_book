import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cook_book/app/login/controllers/authentication_repository.dart';
import 'package:cook_book/app/login/models/user.dart';
import 'package:get/get.dart';

class UserRepository extends GetxController {
  static UserRepository get instance => Get.find();

  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<void> saveUserRecord(User user) async {
    try {
      await _db.collection("users").doc(user.id).set(user.toJson());
    } catch (e) {
      throw "Something wrong $e";
    }
  }

  Future<User> fetchUserDetails() async {
    try {
      final snapshot = await _db.collection("users").doc(AuthenticationRepository.instance.authUser?.uid).get();

      if (snapshot.exists) {
        return User.fromSnapshot(snapshot);
      } else {
        return User.empty();
      }
    } catch (e) {
      throw "Something wrong $e";
    }
  }

  Future<void> updateUserDetails(User user) async {
    try {
      await _db.collection("users").doc(user.id).update(user.toJson());
    } catch (e) {
      throw "Something wrong $e";
    }
  }

  Future<void> updateUserSingleField(Map<String, dynamic> data) async {
    try {
      await _db.collection("users").doc().update(data);
    } catch (e) {
      throw "Something wrong $e";
    }
  }

  Future<void> removeUser(String userId) async {
    try {
      await _db.collection("users").doc(userId).delete();
    } catch (e) {
      throw "Something wrong $e";
    }
  }
}
