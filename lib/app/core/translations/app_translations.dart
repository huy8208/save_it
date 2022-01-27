import 'package:save_it/app/core/values/translations/en_US/en_us_translations.dart';
import 'package:save_it/app/core/values/translations/vi_VN/vi_vn_translations.dart';

abstract class AppTranslation {
  static Map<String, Map<String, String>> translations =
      <String, Map<String, String>>{
    'en_US': enUs,
    'vi_VN': viVN,
  };
}
