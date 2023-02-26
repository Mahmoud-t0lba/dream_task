import 'package:dream_task/controller/constants/app_strings.dart';
import 'package:dream_task/controller/resources/theme/theme_manager.dart';
import 'package:dream_task/controller/resources/translation/app_translation.dart';
import 'package:dream_task/controller/routes/app_routes.dart';
import 'package:dream_task/controller/services/local/lang_locale.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: AppStrings.appName,
      debugShowCheckedModeBanner: false,
      getPages: AppPages.routes,
      initialRoute: AppPages.initial,
      theme: ThemeManager.theme,
      translations: AppTranslation(),
      locale: _checkLang,
      fallbackLocale: const Locale(AppStrings.en),
      builder: (BuildContext context, Widget? child) {
        return Scaffold(
          body: InkWell(
            onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
            child: child,
          ),
        );
      },
    );
  }

  Locale get _checkLang => Lang.instance.get();
}
