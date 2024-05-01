import 'package:cook_book/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TLoaders {
  static successSnackBar({required title, message = ''}) {
    Get.snackbar(
      title,
      message,
      isDismissible: true,
      shouldIconPulse: true,
      colorText: Colors.white,
      backgroundColor: TColors.primary,
      snackPosition: SnackPosition.BOTTOM,
      duration: const Duration(seconds: 2),
      margin: const EdgeInsets.all(10),
      icon: const Icon(Icons.check, color: TColors.white),
    );
  }

  static warningSnackBar({required title, message = ''}) {
    Get.snackbar(
      title,
      message,
      isDismissible: true,
      shouldIconPulse: true,
      colorText: Colors.white,
      backgroundColor: Colors.orange,
      snackPosition: SnackPosition.BOTTOM,
      duration: const Duration(seconds: 2),
      margin: const EdgeInsets.all(10),
      icon: const Icon(Icons.warning, color: TColors.white),
    );
  }

  static errorSnackBar({required title, message = ''}) {
    Get.snackbar(
      title,
      message,
      isDismissible: true,
      shouldIconPulse: true,
      colorText: Colors.white,
      backgroundColor: Colors.red.shade600,
      snackPosition: SnackPosition.BOTTOM,
      duration: const Duration(seconds: 2),
      margin: const EdgeInsets.all(10),
      icon: const Icon(Icons.warning, color: TColors.white),
    );
  }
}
