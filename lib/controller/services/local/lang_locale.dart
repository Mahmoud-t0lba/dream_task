import 'package:dream_task/controller/constants/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'local.dart';

class Lang extends Local<Locale, String> {
  Lang._();

  static Lang instance = Lang._();

  var storage = GetStorage();

  bool get isEn => Get.locale == const Locale(AppStrings.en);

  @override
  void save(String data) => storage.write(AppStrings.appLang, data);

  @override
  Locale get() {
    String? locale = storage.read(AppStrings.appLang);
    return Locale(locale ?? AppStrings.ar);
  }

  @override
  void remove() {
    storage.remove(AppStrings.appLang);
  }
}
