import 'package:get/get.dart';
import 'package:save_it/app/modules/sample_page/controller.dart';
import 'package:save_it/app/services/repository/api_repository.dart';

class SamplePageBinding implements Bindings {
  @override
  void dependencies() {
    // Get.lazyPut<SampleController>(
    //   () {
    //     return SampleController(
    //       repository: ApiRepository(),
    //     );
    //   },
    // );
  }
}
