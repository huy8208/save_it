import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegistrationScreenController extends GetxController {
  final TextEditingController emailInput = TextEditingController();
  final TextEditingController passwordInput = TextEditingController();
  final TextEditingController confirmPasswordInput = TextEditingController();
  final RxBool hidePassword = true.obs;
  final RxBool isCheckedTermAndConditions = false.obs;
  void handleRegisterButton() {}

  void backToWelcomeScreen() {
    Get.back();
  }
}
