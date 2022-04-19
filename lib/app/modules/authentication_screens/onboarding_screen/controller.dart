import 'package:get/get.dart';
import 'package:save_it/app/routes/app_pages.dart';

class OnBoardingScreenController extends GetxController {
  OnBoardingScreenController();

  void goToWelcomeScreen() {
    Get.offAndToNamed(AppRoutes.WELCOME_SCREEN);
  }
}
