import 'package:get/get.dart';
import 'package:save_it/app/core/middleware/middleware.dart';
import 'package:save_it/app/modules/authentication_screens/login_screen/binding.dart';
import 'package:save_it/app/modules/authentication_screens/login_screen/page.dart';
import 'package:save_it/app/modules/authentication_screens/onboarding_screen/binding.dart';
import 'package:save_it/app/modules/authentication_screens/onboarding_screen/page.dart';
import 'package:save_it/app/modules/authentication_screens/registration_screen/binding.dart';
import 'package:save_it/app/modules/authentication_screens/registration_screen/page.dart';
import 'package:save_it/app/modules/authentication_screens/welcome_screen/binding.dart';
import 'package:save_it/app/modules/authentication_screens/welcome_screen/page.dart';
import 'package:save_it/app/modules/home_screen/binding.dart';
import 'package:save_it/app/modules/home_screen/page.dart';

import 'package:save_it/app/modules/sample_screen/binding.dart';
import 'package:save_it/app/modules/sample_screen/page.dart';

part './app_routes.dart';

class AppPages {
  static final List<GetPage<dynamic>> pages = <GetPage<dynamic>>[
    GetPage<dynamic>(
      name: AppRoutes.LOGIN_SCREEN,
      page: () => const LoginScreen(),
      binding: LoginScreenBinding(),
    ),
    GetPage<dynamic>(
      name: AppRoutes.REGISTRATION_SCREEN,
      page: () => const RegistrationScreen(),
      binding: RegistrationScreenBinding(),
    ),
    GetPage<dynamic>(
      name: '/sample_screen',
      page: () => SampleScreen(),
      binding: SamplePageBinding(),
      middlewares: <GetMiddleware>[HomeMiddleware()],
    ),
    GetPage<dynamic>(
      name: AppRoutes.HOME_SCREEN,
      page: () => HomeScreen(),
      binding: HomeScreenBinding(),
    ),
    GetPage<dynamic>(
      name: AppRoutes.ONBOARDING_SCREEN,
      page: () => OnBoardingScreen(),
      binding: OnboardingScreenBinding(),
    ),
    GetPage<dynamic>(
      name: AppRoutes.WELCOME_SCREEN,
      page: () => WelcomeScreen(),
      binding: WelcomeScreenBinding(),
    ),
  ];
}
