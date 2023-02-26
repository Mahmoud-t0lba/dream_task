import 'package:dream_task/controller/constants/app_strings.dart';
import 'package:get/get.dart';

import 'ar.dart';
import 'en.dart';

class AppTranslation extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        AppStrings.en: en,
        AppStrings.ar: ar,
      };
}
