import 'package:cook_book/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TFullScreenLoader {
  static void openLoadingDialog() {
    showDialog(
      context: Get.overlayContext!,
      barrierDismissible: false,
      builder: (_) => WillPopScope(
        onWillPop: () async {
          return true;
        },
        child: Container(
          color: TColors.dark,
          height: double.infinity,
          width: double.infinity,
          child: Column(
            children: const [Text("Loading...")],
          ),
        ),
      ),
    );
  }

  static stopLoading() {
    Navigator.of(Get.overlayContext!).pop();
  }
}
