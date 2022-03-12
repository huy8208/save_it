import 'package:get/get.dart';
import 'package:save_it/app/core/middleware/middleware.dart';
import 'package:save_it/app/modules/authentication_screens/login_screen/binding.dart';
import 'package:save_it/app/modules/authentication_screens/login_screen/page.dart';
import 'package:save_it/app/modules/authentication_screens/registration_screen/binding.dart';
import 'package:save_it/app/modules/authentication_screens/registration_screen/page.dart';
import 'package:save_it/app/modules/authentication_screens/welcome_screen/binding.dart';
import 'package:save_it/app/modules/authentication_screens/welcome_screen/page.dart';
import 'package:save_it/app/modules/home_screen/binding.dart';
import 'package:save_it/app/modules/home_screen/page.dart';

import 'package:save_it/app/modules/sample_screen/binding.dart';
import 'package:save_it/app/modules/sample_screen/page.dart';

class AppPages {
  static final List<GetPage<dynamic>> pages = <GetPage<dynamic>>[
    GetPage<dynamic>(
      name: '/login_screen',
      page: () => LoginScreen(),
      binding: LoginScreenBinding(),
    ),
    GetPage<dynamic>(
      name: '/registration_screen',
      page: () => RegistrationScreen(),
      binding: RegistrationScreenBinding(),
    ),
    GetPage<dynamic>(
      name: '/sample_screen',
      page: () => SampleScreen(),
      binding: SamplePageBinding(),
      middlewares: <GetMiddleware>[HomeMiddleware()],
    ),
    GetPage<dynamic>(
      name: '/home_screen',
      page: () => HomeScreen(),
      binding: HomeScreenBinding(),
    ),
    GetPage<dynamic>(
      name: '/welcome_screen',
      page: () => WelcomeScreen(),
      binding: WelcomeScreenBinding(),
    ),
  ];
}
