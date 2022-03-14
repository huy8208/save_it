import 'package:get/instance_manager.dart';
import 'package:save_it/app/modules/authentication_screens/login_screen/controller.dart';
import 'package:save_it/app/services/providers/firebase.dart';

class LoginScreenBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginScreenController>(
      () => LoginScreenController(fireBaseForLogin: FireBaseProvider()),
    );
  }
}
