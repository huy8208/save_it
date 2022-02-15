import 'package:get_storage/get_storage.dart';
import 'package:save_it/app/services/controller/local_storage.dart';

class LocalStorageRepository {
  LocalStorage localStorage = LocalStorage();

  Future<GetStorage> getLocalStorage() async {
    return localStorage.getLocalStorage();
  }
}
