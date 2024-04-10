import 'package:cook_book/app/onboarding/controllers/onboard_controller.dart';
import 'package:flutter/material.dart';

class OnBoardNext extends StatelessWidget {
  OnBoardNext({
    Key? key,
  }) : super(key: key);

  final controller = OnBoardController.instance;

  @override
  Widget build(BuildContext context) {
    return Positioned(
        child: ElevatedButton(
      onPressed: controller.nextPage,
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        backgroundColor: Colors.black,
      ),
      child: const Icon(Icons.arrow_right_alt),
    ));
  }
}
