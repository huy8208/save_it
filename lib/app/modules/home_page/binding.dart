import 'package:get/get.dart';
import 'package:save_it/app/modules/home_page/controller.dart';
import 'package:save_it/app/services/repository/api_repository.dart';
import 'package:save_it/app/services/repository/plaid_repository.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () {
        return HomeController(
          plaidRepository: PlaidRepository(),
        );
      },
    );
  }
}
