import 'package:dream_task/controller/resources/theme/colors_manager.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    this.text,
    this.borderRadius,
    this.color,
    this.onTap,
    this.contentColor,
    this.width,
    this.height,
    this.borderColor,
    this.loading,
    this.hideIcon = false,
    this.padding,
    this.textDirection,
    this.child,
    this.iconSize,
    this.radius,
    this.fontSize,
    this.fontWeight,
    this.margin,
  });

  final Color? color, borderColor, contentColor;
  final BorderRadius? borderRadius;
  final EdgeInsets? padding, margin;
  final TextDirection? textDirection;
  final Function? onTap;

  final String? text;
  final double? width, height, iconSize, radius, fontSize;
  final FontWeight? fontWeight;

  final RxBool? loading;
  final bool? hideIcon;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: textDirection ?? TextDirection.rtl,
      child: Container(
        width: width,
        height: height,
        margin: margin ?? const EdgeInsets.only(top: 10),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: 0.0,
            backgroundColor: color ?? ColorManager.blueColor,
            padding: padding ??
                const EdgeInsets.symmetric(horizontal: 2, vertical: 2),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
              side: BorderSide(
                color: borderColor ?? Colors.transparent,
                width: 2,
              ),
            ),
          ),
          onPressed: () => onTap!(),
          child: child ??
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    text!.tr,
                    style: Get.textTheme.bodyMedium!.copyWith(
                      color: contentColor ?? Colors.white,
                      fontSize: fontSize,
                      fontWeight: fontWeight,
                    ),
                  ),
                ],
              ),
        ),
      ),
    );
  }
}
