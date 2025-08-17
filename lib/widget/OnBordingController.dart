import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:shoping/modules/auth/login_screen.dart';

class OnBordingController{
  static OnBordingController get instace => Get.find();
  final pageController=PageController();
  Rx<int> currentPageIndex=0.obs;

  void updatePageIndecator(index)=> currentPageIndex =index;

  void navtigationonClike(index){
    currentPageIndex.value=index;
    pageController.jumpToPage(index);
  }
  void netPage(){
    if(currentPageIndex.value==2){
      Get.to(LoginScreen());
    }else{
      int page=currentPageIndex.value=1;
      pageController.jumpToPage(page);
    }
  }
  void skipPage(){
    int page=currentPageIndex.value=2;
    pageController.jumpToPage(page);
  }
}