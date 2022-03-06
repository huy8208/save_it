import 'package:flutter/material.dart';
import 'package:get/get.dart';

void errorSnackBar(String textError) {
  Get.snackbar(
    'Error!',
    textError,
    colorText: Colors.white,
    isDismissible: true,
    maxWidth: 400,
    icon: const Icon(Icons.error_outline_outlined, size: 30),
    backgroundColor: Colors.red[800],
    padding: const EdgeInsets.all(10),
  );
}
