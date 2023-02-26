import 'package:dream_task/controller/resources/theme/colors_manager.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyText extends StatelessWidget {
  final String title;
  final String? fontFamily;
  final Color? color;
  final double? fontSize, letterSpace, wordSpace;
  final TextAlign? alien;
  final TextDecoration? decoration;
  final TextOverflow? overflow;
  final FontWeight? fontWeight;
  final TextStyle? style;
  final EdgeInsets? padding;
  final int? maxLines;

  const MyText({
    super.key,
    required this.title,
    this.color,
    this.fontSize,
    this.letterSpace,
    this.wordSpace,
    this.fontFamily,
    this.alien,
    this.decoration,
    this.overflow,
    this.fontWeight,
    this.style,
    this.padding,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: Text(
        title.tr,
        textAlign: alien ?? TextAlign.start,
        overflow: overflow,
        maxLines: maxLines,
        style: style ??
            TextStyle(
              color: color ?? ColorManager.primaryColor,
              fontSize: fontSize ?? 16,
              decoration: decoration ?? TextDecoration.none,
              fontWeight: fontWeight,
              fontFamily: fontFamily,
            ),
      ),
    );
  }
}
