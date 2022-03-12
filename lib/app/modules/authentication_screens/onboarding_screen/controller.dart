import 'package:get/get.dart';

class OnBoardingScreenController extends GetxController {
  OnBoardingScreenController();

  void goToWelcomeScreen() {
    Get.offAndToNamed('/welcome_screen');
  }
}
