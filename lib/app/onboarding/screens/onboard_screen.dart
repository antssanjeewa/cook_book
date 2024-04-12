import 'package:cook_book/app/onboarding/controllers/onboard_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/onboard_next.dart';
import '../widgets/onboard_page.dart';
import '../widgets/onboard_paginate.dart';
import '../widgets/onboard_skip.dart';

class OnBoardScreen extends StatelessWidget {
  const OnBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardController());

    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardPage(
                image: "assets/onboard_image/Charity-bro.svg",
                title: 'Choose Your Items',
                subTitle: 'welcome to the this app. for your favorite.',
              ),
              OnBoardPage(
                image: "assets/onboard_image/Chef-bro.svg",
                title: 'Make a Good Product',
                subTitle: 'you can try your own receipt',
              ),
              OnBoardPage(
                image: "assets/onboard_image/Pizza maker-bro.svg",
                title: 'Enjoy Your Life',
                subTitle: 'free your ideas to execute',
              ),
            ],
          ),
          const OnBoardSkip(),
          OnBoardPaginate(),
          OnBoardNext()
        ],
      ),
    );
  }
}
