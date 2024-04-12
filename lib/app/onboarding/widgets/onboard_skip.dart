import 'package:cook_book/app/onboarding/controllers/onboard_controller.dart';
import 'package:cook_book/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class OnBoardSkip extends StatelessWidget {
  const OnBoardSkip({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: TSizes.defaultSpace,
      top: TSizes.defaultSpace,
      child: TextButton(
        onPressed: OnBoardController.instance.skipPage,
        child: const Text("Skip"),
      ),
    );
  }
}
