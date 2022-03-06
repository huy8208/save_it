import 'package:get/get.dart';
import 'package:save_it/app/modules/authentication_screens/welcome_screen/controller.dart';
import 'package:save_it/app/modules/home_screen/controller.dart';
import 'package:save_it/app/modules/root_screen/controller.dart';
import 'package:save_it/app/modules/sample_screen/controller.dart';
import 'package:save_it/app/services/repository/api_repository.dart';
import 'package:save_it/app/services/repository/plaid_repository.dart';

class RootBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RootController>(
      () => RootController(
        repository: ApiRepository(),
      ),
    );
    Get.lazyPut<HomeController>(
      () => HomeController(plaidRepository: PlaidRepository()),
    );
    Get.lazyPut<SampleController>(
      () => SampleController(repository: ApiRepository()),
    );
    Get.lazyPut<WelcomeScreenController>(() => WelcomeScreenController());
  }
}
