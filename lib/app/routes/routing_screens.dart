import 'package:get/get.dart';
import 'package:save_it/app/core/middleware/middleware.dart';
import 'package:save_it/app/modules/home_screen/binding.dart';
import 'package:save_it/app/modules/home_screen/page.dart';
import 'package:save_it/app/modules/root_screen/binding.dart';
import 'package:save_it/app/modules/root_screen/page.dart';
import 'package:save_it/app/modules/sample_screen/binding.dart';
import 'package:save_it/app/modules/sample_screen/page.dart';

class AppPages {
  static final List<GetPage<dynamic>> pages = <GetPage<dynamic>>[
    GetPage<dynamic>(
      name: '/homepage',
      page: () => HomeScreen(),
      binding: HomeBinding(),
    ),
    GetPage<dynamic>(
      name: '/sample_page',
      page: () => SampleScreen(),
      binding: SamplePageBinding(),
      middlewares: <GetMiddleware>[HomeMiddleware()],
    ),
    GetPage<dynamic>(
      name: '/root',
      page: () => RootScreen(),
      binding: RootBinding(),
    ),
  ];
}
