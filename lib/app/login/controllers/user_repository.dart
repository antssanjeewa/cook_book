import 'package:cloud_firestore/cloud_firestore.dart';
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
}
