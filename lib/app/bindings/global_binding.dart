import 'package:get/get.dart';
import 'package:save_it/app/global_controllers/firebase_authentication_controller.dart';

class GlobalBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FirebaseAuthController>(() => FirebaseAuthController());
  }
}
