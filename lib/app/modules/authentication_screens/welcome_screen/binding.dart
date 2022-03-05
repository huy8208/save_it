import 'package:get/get.dart';
import 'package:save_it/app/modules/authentication_screens/welcome_screen/controller.dart';

class WelcomeScreenBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WelcomeScreenController());
  }
}
