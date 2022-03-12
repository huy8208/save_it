import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:save_it/app/bindings/global_binding.dart';
import 'package:save_it/app/core/theme/app_theme.dart';
import 'package:save_it/app/core/translations/app_translations.dart';
import 'package:save_it/app/routes/routing_screens.dart';

void main() {
  GlobalBinding().dependencies();
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/onboarding_screen',
      theme: appThemeData,
      defaultTransition: Transition.fade,
      getPages: AppPages.pages,
      locale: const Locale('en', 'US'),
      fallbackLocale: const Locale('en', 'US'),
      translationsKeys: AppTranslation.translations,
    ),
  );
}
