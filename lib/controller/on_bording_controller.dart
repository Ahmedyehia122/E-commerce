import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

abstract class OnBordingController extends GetxController {
  //move to next page
  next();
  //slide screen to the next page
  onPageChanged(int index);
}

class OnBordingControllerImp extends OnBordingController {
  late PageController pageController;
  int currentPage = 0;
  @override
  next() {
    currentPage++;
    pageController.animateToPage(currentPage,
        duration: Duration(milliseconds: 900), curve: Curves.easeInOut);
  }

  @override
  onPageChanged(int index) {
    currentPage = index;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}
