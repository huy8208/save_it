import 'package:get/get.dart';
import 'package:save_it/app/modules/authentication_screens/login_screen/controller.dart';
import 'package:save_it/app/modules/authentication_screens/welcome_screen/controller.dart';
import 'package:save_it/app/modules/home_screen/controller.dart';
import 'package:save_it/app/modules/sample_screen/controller.dart';
import 'package:save_it/app/services/repository/api_repository.dart';
import 'package:save_it/app/services/repository/plaid_repository.dart';

class HomeScreenBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeScreenController>(
      () => HomeScreenController(
        repository: ApiRepository(),
      ),
    );
    Get.lazyPut<SampleController>(
      () => SampleController(repository: ApiRepository()),
    );
    Get.lazyPut<WelcomeScreenController>(() => WelcomeScreenController());
  }
}
