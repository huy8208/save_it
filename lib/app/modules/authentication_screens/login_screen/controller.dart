import 'package:get/get.dart';

class LoginScreenController extends GetxController {
  LoginScreenController();
  RxString logoText = 'logo'.obs;
  void LoginButtonClicked() {
    Get.toNamed('/home_screen');
  }
}
