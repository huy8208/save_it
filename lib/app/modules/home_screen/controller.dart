import 'package:get/get.dart';
import 'package:save_it/app/services/repository/api_repository.dart';

class HomeScreenController extends GetxController {
  HomeScreenController({required this.repository});

  final RxString _someThing = 'ROOT PAGE'.obs;
  String get something => _someThing.value;
  set something(String value) => _someThing.value = value;

  String doSomething() {
    repository.getAll();
    return 'Return Something';
  }

  final ApiRepository repository;
}
