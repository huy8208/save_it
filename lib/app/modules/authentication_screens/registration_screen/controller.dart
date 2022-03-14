import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:save_it/app/core/utils/snackBarError.dart';
import 'package:save_it/app/services/providers/firebase.dart';

class RegistrationScreenController extends GetxController {
  RegistrationScreenController({required this.firebaseForRegistration});

  final TextEditingController emailInput = TextEditingController();
  final TextEditingController passwordInput = TextEditingController();
  final TextEditingController confirmPasswordInput = TextEditingController();
  final RxBool hidePassword = true.obs;
  final RxBool isCheckedTermAndConditions = false.obs;
  final FireBaseProvider firebaseForRegistration;

  Future<void> handleRegistrationAction(String email, String password) async {
    final String registration =
        await firebaseForRegistration.register(email, password);
    if (registration == 'FirebaseAuthException caughted: Registration failed') {
      print('Registration failed!');
    } else {
      Get.offAndToNamed('/home_screen');
    }
  }

  void backToWelcomeScreen() {
    Get.back();
  }

  void handleUnmatchingPasswords() {}

  void togglePassword() {
    hidePassword.value = !hidePassword.value;
  }
}
