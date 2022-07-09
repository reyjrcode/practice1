import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:jegoshit/models/onboarding_model.dart';

class OnboardController extends GetxController{

  final selectedPageNumber= 0.obs;

  final showGetStart=false.obs;
  bool get isLastPage=>selectedPageNumber.value==listonboarding.length-1;
  final pageController = PageController();
}