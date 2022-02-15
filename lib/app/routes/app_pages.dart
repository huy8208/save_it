import 'package:get/get.dart';
import 'package:save_it/app/core/middleware/middleware.dart';
import 'package:save_it/app/modules/home_page/binding.dart';
import 'package:save_it/app/modules/home_page/page.dart';
import 'package:save_it/app/modules/sample_page/binding.dart';
import 'package:save_it/app/modules/sample_page/page.dart';

part './app_routes.dart';

class AppPages {
  static final List<GetPage<dynamic>> pages = <GetPage<dynamic>>[
    GetPage<dynamic>(
      name: Routes.INITIAL,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
    GetPage<dynamic>(
      name: Routes.DETAILS,
      page: () => DetailsPage(),
      binding: DetailsBinding(),
      middlewares: <GetMiddleware>[HomeMiddleware()],
    ),
  ];
}
