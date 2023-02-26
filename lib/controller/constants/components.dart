import 'package:flutter/material.dart';
import 'package:get/get.dart';

SnackbarController hintSnackBar(String message) => Get.rawSnackbar(
      message: message.tr,
      borderRadius: 8,
      duration: const Duration(seconds: 3),
      backgroundColor: Colors.black.withOpacity(.8),
      margin: const EdgeInsets.symmetric(horizontal: 12),
    );
SnackbarController loadingSnackBar(String message) => Get.rawSnackbar(
      message: message.tr,
      borderRadius: 8,
      duration: const Duration(seconds: 3),
      backgroundColor: Colors.blue,
      margin: const EdgeInsets.symmetric(horizontal: 12),
    );

SnackbarController successSnackBar(String message) => Get.rawSnackbar(
      message: message.tr,
      borderRadius: 8,
      duration: const Duration(seconds: 3),
      backgroundColor: Colors.green,
      margin: const EdgeInsets.symmetric(horizontal: 12),
    );

SnackbarController errorSnackBar(String message) => Get.rawSnackbar(
      message: message.tr,
      borderRadius: 8,
      duration: const Duration(seconds: 3),
      backgroundColor: Colors.red[900]!,
      margin: const EdgeInsets.symmetric(horizontal: 12),
    );
