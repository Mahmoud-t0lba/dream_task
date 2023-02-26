import 'package:dream_task/controller/resources/theme/text_manager.dart';
import 'package:flutter/material.dart';

import 'colors_manager.dart';

class ThemeManager {
  static ThemeData get theme => ThemeData(
        primaryColor: ColorManager.primaryColor,
        primaryColorLight: Colors.white,
        scaffoldBackgroundColor: Colors.white,
        fontFamily: '',
        brightness: Brightness.light,
        platform: TargetPlatform.iOS,
        appBarTheme: const AppBarTheme(
          backgroundColor: ColorManager.bgColor,
          elevation: 0.0,
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontStyle: FontStyle.normal,
            fontFamily: '',
            fontWeight: FontWeight.w700,
          ),
          iconTheme: IconThemeData(
            size: 30,
            color: ColorManager.blueColor,
          ),
        ),
        iconTheme: const IconThemeData(
          size: 30,
          color: ColorManager.primaryColor,
        ),
        textTheme: TextManager.textStyle,
      );
}
