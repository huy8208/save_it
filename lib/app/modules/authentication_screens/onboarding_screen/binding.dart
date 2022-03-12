import 'package:get/instance_manager.dart';
import 'package:save_it/app/modules/authentication_screens/onboarding_screen/controller.dart';

class OnboardingScreenBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OnBoardingScreenController>(() => OnBoardingScreenController());
  }
}
