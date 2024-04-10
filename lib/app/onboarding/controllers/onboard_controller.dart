import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OnBoardController extends GetxController {
  static OnBoardController get instance => Get.find();

  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  void updatePageIndicator(index) => currentPageIndex.value = index;

  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  void nextPage() {
    int page = currentPageIndex.value + 1;
    pageController.jumpToPage(page);
  }

  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}
