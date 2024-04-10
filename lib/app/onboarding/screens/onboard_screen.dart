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
                image: 'a',
                subTitle: 'a',
                title: 'a',
              ),
              OnBoardPage(
                image: 'a',
                subTitle: 'a',
                title: 'a',
              ),
              OnBoardPage(
                image: 'a',
                subTitle: 'a',
                title: 'a',
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
