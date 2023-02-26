import 'package:dream_task/controller/resources/theme/colors_manager.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final EdgeInsets? contentPadding, customPadding;
  final String? hintText, text, validator;
  final TextInputType? keyboardType;
  final int? maxLength, maxLines;
  final RxBool? enabled;
  final TextDirection? textDirection;
  final TextInputAction? textInputAction;
  final RxBool? show;
  final InputType? inputType;
  final Color? textColor, fillColor;
  final GestureTapCallback? onTap;
  final TextAlignVertical? textAlignVertical;
  final Widget? prefixIcon;
  final TextAlign? textAlign;

  const CustomTextField({
    super.key,
    this.controller,
    this.contentPadding,
    this.customPadding,
    this.hintText,
    this.text,
    this.validator,
    this.keyboardType,
    this.maxLength,
    this.maxLines,
    this.enabled,
    this.textDirection,
    this.textInputAction,
    this.show,
    this.inputType,
    this.textColor,
    this.fillColor,
    this.onTap,
    this.textAlignVertical,
    this.prefixIcon,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: customPadding ?? const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (text != null) ...[
            Text(
              (text ?? '').tr,
              style: TextStyle(color: textColor ?? Colors.black),
            ),
            const SizedBox(height: 6),
          ],
          InkWell(
            onTap: onTap,
            child: Obx(
              () => TextFormField(
                style: const TextStyle(color: ColorManager.primaryColor),
                controller: controller,
                textAlignVertical: textAlignVertical,
                textAlign: textAlign ?? TextAlign.start,
                cursorColor: ColorManager.primaryColor,
                keyboardType: keyboardType,
                obscureText: (show ?? false.obs).value,
                maxLength: maxLength,
                maxLines: maxLines ?? 1,
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return validator;
                  }
                  return null;
                },
                textDirection: textDirection,
                textInputAction: textInputAction ?? TextInputAction.next,
                decoration: InputDecoration(
                  border: inputBorder,
                  enabledBorder: inputBorder,
                  suffixIcon: inputType == InputType.password
                      ? Obx(
                          () => IconButton(
                            color: Get.theme.primaryColor,
                            onPressed: () => show!(!show!.value),
                            icon: Icon(
                              show!.value
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: Colors.grey,
                            ),
                          ),
                        )
                      : null,
                  prefixIcon: prefixIcon,
                  enabled: onTap == null ? (enabled ?? true.obs).value : false,
                  focusedBorder: inputBorder,
                  hintText: hintText,
                  fillColor: fillColor ?? Colors.black,
                  filled: fillColor != null ? true : false,
                  contentPadding: contentPadding ??
                      const EdgeInsets.symmetric(horizontal: 10),
                  counterText: '',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  InputBorder get inputBorder => const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(12)),
      borderSide: BorderSide(color: Colors.grey, width: .5));
}

enum InputType { password, text }
