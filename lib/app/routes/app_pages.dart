import 'package:get/get.dart';
import 'package:save_it/app/core/middleware/middleware.dart';
import 'package:save_it/app/modules/details/binding.dart';
import 'package:save_it/app/modules/details/page.dart';
import 'package:save_it/app/modules/home/binding.dart';
import 'package:save_it/app/modules/home/page.dart';
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
