import 'package:save_it/app/services/controller/api.dart';

class ApiRepository {
  final ApiDio apiDio = ApiDio();

  dynamic getAll() {
    return apiDio.getSomething();
  }
}
