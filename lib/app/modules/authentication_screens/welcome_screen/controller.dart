import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:save_it/app/routes/app_pages.dart';

class WelcomeScreenController extends GetxController
    with GetSingleTickerProviderStateMixin {
  WelcomeScreenController();
  late AnimationController animationController;
  late Animation<Color?> animation;

  @override
  void onInit() {
    animationController =
        AnimationController(duration: const Duration(seconds: 1), vsync: this);
    animation = ColorTween(begin: Colors.blueGrey.shade50, end: Colors.white)
        .animate(animationController);
  }

  void handleLoginButton() {
    Get.toNamed(AppRoutes.LOGIN_SCREEN);
  }

  void handleRegisterButton() {
    Get.toNamed(AppRoutes.REGISTRATION_SCREEN);
  }
}
