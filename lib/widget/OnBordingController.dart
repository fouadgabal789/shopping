import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:shoping/modules/auth/login_screen.dart';

class OnBordingController extends GetxController {
  static OnBordingController get instance => Get.find();

  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  void updatePageIndecator(int index) => currentPageIndex.value = index;

  void navtigationonClike(int index) {
    currentPageIndex.value = index;
    pageController.jumpToPage(index);
  }

  void netPage() {
    if (currentPageIndex.value == 2) {
      Get.to(LoginScreen());
    } else {
      int page = currentPageIndex.value + 1; // 👈 تصحيح
      currentPageIndex.value = page;
      pageController.jumpToPage(page);
    }
  }

  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}
