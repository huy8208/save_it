import 'package:get_storage/get_storage.dart';

class LocalStorage {
  Future<GetStorage> getLocalStorage() async {
    final GetStorage localStorage = GetStorage('key_local_storage');
    return localStorage;
  }
}
