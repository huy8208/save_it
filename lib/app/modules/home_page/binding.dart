import 'package:get/get.dart';
import 'package:save_it/app/modules/home_page/controller.dart';
import 'package:save_it/app/services/repository/plaid_repository.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(plaidRepository: PlaidRepository()),
    );
  }
}
