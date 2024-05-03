import 'package:cloud_firestore/cloud_firestore.dart';

class Category {
  String id;
  String name;
  String parentId;
  bool isFeatured;

  Category({
    required this.id,
    required this.name,
    this.parentId = '',
    required this.isFeatured,
  });

  static Category empty() => Category(id: '', isFeatured: false, name: '', parentId: '');

  Map<String, dynamic> toJson() {
    return {
      'Name': name,
      'ParentId': parentId,
      'IsFeatured': isFeatured,
    };
  }

  factory Category.fromSnapshot(DocumentSnapshot<Map<String, dynamic>> doc) {
    if (doc.data() != null) {
      final data = doc.data()!;
      return Category(
        id: doc.id,
        name: data['Name'] ?? '',
        parentId: data['ParentId'] ?? '',
        isFeatured: data['IsFeatured'] ?? false,
      );
    } else {
      return Category.empty();
    }
  }
}
