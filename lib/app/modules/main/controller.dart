import 'package:flutter/material.dart';
import 'package:flutter_custom_carousel_slider/flutter_custom_carousel_slider.dart';
import 'package:get/get.dart';
import 'package:news_api_flutter_package/news_api_flutter_package.dart';
import 'package:save_it/app/services/providers/firebase.dart';
import 'package:save_it/app/services/repository/api_repository.dart';

class MainScreenController extends GetxController {
  MainScreenController({required this.repository, required this.grabFireStore});

  final RxString _someThing = 'ROOT PAGE'.obs;
  String get something => _someThing.value;
  set something(String value) => _someThing.value = value;

  String doSomething() {
    repository.getAll();
    return 'Return Something';
  }

  final ApiRepository repository;
  final FireBaseProvider grabFireStore;
}
