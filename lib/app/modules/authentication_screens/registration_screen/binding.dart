import 'package:get/instance_manager.dart';
import 'package:save_it/app/modules/authentication_screens/registration_screen/controller.dart';

class RegistrationScreenBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RegistrationScreenController>(
        () => RegistrationScreenController());
  }
}
