import 'package:cook_book/app/login/controllers/authentication_repository.dart';
import 'package:cook_book/app/login/screens/verify_email.dart';
import 'package:cook_book/utils/helpers/full_screen_loader.dart';
import 'package:cook_book/utils/helpers/loaders.dart';
import 'package:cook_book/utils/helpers/network_manager.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LogInController extends GetxController {
  static LogInController get instance => Get.find();

  final hidePassword = true.obs;
  final rememberMe = false.obs;

  final localStorage = GetStorage();

  final email = TextEditingController();
  final password = TextEditingController();
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  @override
  void onInit() {
    email.text = localStorage.read("REM_EMAIL");
    password.text = localStorage.read("REM_PASSWORD");
    super.onInit();
  }

  Future<void> login() async {
    try {
      TFullScreenLoader.openLoadingDialog();
      //
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        return;
      }

      //
      if (!loginFormKey.currentState!.validate()) {
        return;
      }

      if (rememberMe.value) {
        localStorage.write("REM_EMAIL", email.text.trim());
        localStorage.write("REM_PASSWORD", password.text.trim());
      }

      final userCredential = await AuthenticationRepository.instance.loginWithEmailAndPassword(email.text.trim(), password.text.trim());

      TLoaders.successSnackBar(title: "Congratulation");

      Get.to(() => const VerifyEmailScreen());

      ///
    } catch (e) {
      //
      TLoaders.warningSnackBar(title: "Oh Snap!", message: e.toString());
    } finally {
      TFullScreenLoader.stopLoading();
    }
  }
}
