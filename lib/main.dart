import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:save_it/app/bindings/global_binding.dart';
import 'package:save_it/app/core/theme/app_theme.dart';
import 'package:save_it/app/core/translations/app_translations.dart';
import 'package:save_it/app/routes/app_pages.dart';

Future<void> main() async {
  GlobalBinding().dependencies();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.ONBOARDING_SCREEN,
      theme: appThemeData,
      defaultTransition: Transition.fade,
      getPages: AppPages.pages,
      locale: const Locale('en', 'US'),
      fallbackLocale: const Locale('en', 'US'),
      translationsKeys: AppTranslation.translations,
    ),
  );
}
