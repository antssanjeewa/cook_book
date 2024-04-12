import 'package:cook_book/app/onboarding/controllers/onboard_controller.dart';
import 'package:cook_book/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class OnBoardNext extends StatelessWidget {
  OnBoardNext({
    Key? key,
  }) : super(key: key);

  final controller = OnBoardController.instance;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: TSizes.defaultSpace,
      right: TSizes.defaultSpace,
      child: ElevatedButton(
        onPressed: controller.nextPage,
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          backgroundColor: Colors.black,
        ),
        child: const Padding(
          padding: EdgeInsets.all(TSizes.buttonHeight),
          child: Icon(Icons.arrow_forward_ios_rounded),
        ),
      ),
    );
  }
}
