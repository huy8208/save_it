import 'package:save_it/app/services/providers/api.dart';

class ApiRepository {
  final ApiDio apiDio = ApiDio();

  dynamic getAll() {
    return apiDio.getSomething();
  }
}
