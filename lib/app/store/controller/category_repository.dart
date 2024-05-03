import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cook_book/app/store/models/categry.dart';
import 'package:get/get.dart';

class CategoryRepository extends GetxController {
  static CategoryRepository get instance => Get.find();

  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<List<Category>> getAllCategory() async {
    try {
      final snapshot = await _db.collection("categories").get();
      return snapshot.docs.map((doc) => Category.fromSnapshot(doc)).toList();
    } catch (e) {
      throw "Something wrong $e";
    }
  }
}
