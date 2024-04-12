import 'package:cook_book/app/onboarding/controllers/onboard_controller.dart';
import 'package:cook_book/utils/constants/colors.dart';
import 'package:cook_book/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardPaginate extends StatelessWidget {
  OnBoardPaginate({
    Key? key,
  }) : super(key: key);

  final controller = OnBoardController.instance;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: TSizes.defaultSpace,
      bottom: TSizes.defaultSpace + 20,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        count: 3,
        effect: const ExpandingDotsEffect(
          activeDotColor: TColors.primary,
          dotHeight: 6,
        ),
      ),
    );
  }
}
