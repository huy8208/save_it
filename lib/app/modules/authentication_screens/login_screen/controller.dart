import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreenController extends GetxController {
  LoginScreenController();

  final RxBool isCheckedRememberMe = false.obs;
  final RxBool hidePassword = true.obs;

  final TextEditingController emailInput = TextEditingController();
  final TextEditingController passwordInput = TextEditingController();

  RxString logoText = 'logo'.obs;

  void handleClickLoginButton() {
    Get.offAndToNamed('/home_screen');
  }

  void togglePassword() {
    hidePassword.value = !hidePassword.value;
  }

  void handleForgotPassword() {}
  void backToWelcomeScreen() {
    Get.back();
  }
}
