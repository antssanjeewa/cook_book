import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cook_book/utils/formatters/formatter.dart';

class User {
  final String id;
  String firstName;
  String lastName;
  String userName;
  String email;
  String phone;

  User({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.userName,
    required this.email,
    required this.phone,
  });

  String get fullName => '$firstName $lastName';

  String get formatPhone => TFormatter.formatPhoneNumber(phone);

  static User empty() => User(id: '', firstName: '', lastName: '', userName: '', email: '', phone: '');

  Map<String, dynamic> toJson() {
    return {
      'FirstName': firstName,
      'LastName': lastName,
      'UserName': userName,
      'Email': email,
      'Phone': phone,
    };
  }

  factory User.fromSnapshot(DocumentSnapshot<Map<String, dynamic>> doc) {
    if (doc.data() != null) {
      final data = doc.data()!;
      return User(
        id: doc.id,
        firstName: data['firstName'] ?? '',
        lastName: data['lastName'] ?? '',
        userName: data['userName'] ?? '',
        email: data['email'] ?? '',
        phone: data['phone'] ?? '',
      );
    } else {
      return User.empty();
    }
  }
}
