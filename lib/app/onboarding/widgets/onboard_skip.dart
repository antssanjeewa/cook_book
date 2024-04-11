import 'package:cook_book/app/onboarding/controllers/onboard_controller.dart';
import 'package:cook_book/utils/constant/size.dart';
import 'package:flutter/material.dart';

class OnBoardSkip extends StatelessWidget {
  const OnBoardSkip({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: MySizes.defaultSpace,
      top: MySizes.defaultSpace,
      child: TextButton(
        onPressed: OnBoardController.instance.skipPage,
        child: const Text("Skip"),
      ),
    );
  }
}
