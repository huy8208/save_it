import 'package:get/get.dart';
import 'package:news_api_flutter_package/news_api_flutter_package.dart';
import 'package:save_it/app/core/utils/keys.dart';
import 'package:save_it/app/modules/home_screen/controller.dart';
import 'package:save_it/app/modules/main/controller.dart';
import 'package:save_it/app/modules/profile_screen/controller.dart';
import 'package:save_it/app/modules/sample_screen/controller.dart';
import 'package:save_it/app/services/providers/firebase.dart';
import 'package:save_it/app/services/providers/firestore.dart';
import 'package:save_it/app/services/repository/api_repository.dart';
import 'package:save_it/app/widgets/spendingChart.dart';

class MainScreenBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MainScreenController>(
      () => MainScreenController(
          repository: ApiRepository(), grabFireStore: FireBaseProvider()),
    );
    Get.lazyPut<SampleController>(
      () => SampleController(repository: ApiRepository()),
    );
    Get.lazyPut<ProfileScreenController>(() => ProfileScreenController());
    Get.lazyPut<HomeScreenController>(
      () => HomeScreenController(
          grabNewsAPI: NewsAPI(NEWS_API), grabFireStore: FireStoreProvider()),
    );
    Get.lazyPut<SpendingChartController>(() => SpendingChartController());
  }
}
