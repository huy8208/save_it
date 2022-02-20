import 'package:get/get.dart';
import 'package:save_it/app/modules/root_app/controller.dart';
import 'package:save_it/app/services/repository/api_repository.dart';

class RootBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RootController>(
      () {
        return RootController(
          repository: ApiRepository(),
        );
      },
    );
  }
}
