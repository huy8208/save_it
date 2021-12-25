import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:savis/bindings/global_bindings.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  GlobalBinding().dependencies();
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    // home: LandingPage(),
    title: "Savis",
    theme: ThemeData(
        appBarTheme: AppBarTheme(
            systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Platform.isIOS ? Brightness.light : Brightness.dark,
      statusBarIconBrightness:
          Platform.isIOS ? Brightness.light : Brightness.dark,
    ))),
  ));
}
