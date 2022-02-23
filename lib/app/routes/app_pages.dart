import 'package:get/get.dart';
import 'package:save_it/app/core/middleware/middleware.dart';
import 'package:save_it/app/modules/home_page/binding.dart';
import 'package:save_it/app/modules/home_page/page.dart';
import 'package:save_it/app/modules/root_app/binding.dart';
import 'package:save_it/app/modules/root_app/page.dart';
import 'package:save_it/app/modules/sample_page/binding.dart';
import 'package:save_it/app/modules/sample_page/page.dart';

class AppPages {
  static final List<GetPage<dynamic>> pages = <GetPage<dynamic>>[
    GetPage<dynamic>(
      name: '/',
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
    GetPage<dynamic>(
      name: '/sample_page',
      page: () => SamplePage(),
      binding: SamplePageBinding(),
      middlewares: <GetMiddleware>[HomeMiddleware()],
    ),
    GetPage<dynamic>(
      name: '/root',
      page: () => RootPage(),
      binding: RootBinding(),
    ),
  ];
}
