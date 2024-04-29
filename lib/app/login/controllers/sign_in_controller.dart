import 'package:cook_book/app/home/screens/home.dart';
import 'package:cook_book/app/login/controllers/authentication_repository.dart';
import 'package:cook_book/app/login/controllers/user_repository.dart';
import 'package:cook_book/app/login/models/user.dart';
import 'package:cook_book/utils/helpers/full_screen_loader.dart';
import 'package:cook_book/utils/helpers/loaders.dart';
import 'package:cook_book/utils/helpers/network_manager.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInController extends GetxController {
  static SignInController get instance => Get.find();

  final hidePassword = true.obs;
  final privacyPolicy = false.obs;

  final email = TextEditingController();
  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final userName = TextEditingController();
  final phoneNumber = TextEditingController();
  final password = TextEditingController();
  GlobalKey<FormState> signUpFormKey = GlobalKey<FormState>();

  Future<void> signUp() async {
    try {
      TFullScreenLoader.openLoadingDialog();
      //
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        return;
      }

      //
      if (!signUpFormKey.currentState!.validate()) {
        return;
      }

      if (!privacyPolicy.value) {
        TLoaders.warningSnackBar(title: "Accept Privacy policy");
        return;
      }

      final userCredential = await AuthenticationRepository.instance.registerWithEmailAndPassword(email.text.trim(), password.text.trim());

      final newUser = User(
        id: userCredential.user!.uid,
        firstName: firstName.text.trim(),
        lastName: lastName.text.trim(),
        userName: userName.text.trim(),
        email: email.text.trim(),
        phone: phoneNumber.text.trim(),
      );

      final userRepository = Get.put(UserRepository());
      userRepository.saveUserRecord(newUser);

      TLoaders.successSnackBar(title: "Congratulation");

      Get.to(() => const HomeScreen());

      ///
    } catch (e) {
      //
      TLoaders.warningSnackBar(title: "Oh Snap!", message: e.toString());
    } finally {
      TFullScreenLoader.stopLoading();
    }
  }
}
