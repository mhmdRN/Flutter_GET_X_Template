
import 'package:ecommerce_store/features/authentication/screens/login/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
class OnBoardingController extends GetxController{
  static OnBoardingController get instance => Get.find();

  //variables
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  //Update Current Index when page scroll
  void updatePageIndicator(index) => currentPageIndex.value = index;
  // Jump to the specific dot selected page
  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }
  // Update Current Index & jump to the next page
  void nextPage(){
    print("testttttttttt ${currentPageIndex.value}");
    if(currentPageIndex.value == 2){
      //go to login screen
      Get.offAll(const LoginScreen());
    }else{
      pageController.jumpTo(currentPageIndex.value - 1);
    }
  }
  // Update Current Index & jump to the last page
  void skipPage(){
    currentPageIndex.value = 2;
    pageController.jumpTo(2);
  }
}