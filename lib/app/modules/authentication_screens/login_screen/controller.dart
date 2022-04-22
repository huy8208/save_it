import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_api_flutter_package/news_api_flutter_package.dart';
import 'package:save_it/app/routes/app_pages.dart';
import 'package:save_it/app/services/providers/firebase.dart';

class LoginScreenController extends GetxController {
  LoginScreenController({
    required this.fireBaseForLogin,
  });

  final RxBool isCheckedRememberMe = false.obs;
  final RxBool hidePassword = true.obs;
  final RxBool isAuthenticated = false.obs;
  final TextEditingController emailInput = TextEditingController();
  final TextEditingController passwordInput = TextEditingController();

  RxString logoText = 'logo'.obs;

  Future<void> handleClickLoginButton(String email, String password) async {
    final String login = await fireBaseForLogin.signIn(email, password);
    if (login == 'FirebaseAuthException caughted: Login failed') {
      print('login failed');
    } else if (login == 'loginedSuccessful') {
      isAuthenticated.value = true;
      Get.offAndToNamed(AppRoutes.MAIN_SCREEN);
    }
  }

  void togglePassword() {
    hidePassword.value = !hidePassword.value;
  }

  void handleForgotPassword() {}
  void backToWelcomeScreen() {
    Get.back();
  }

  final FireBaseProvider fireBaseForLogin;
}
