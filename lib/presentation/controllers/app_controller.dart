import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppController extends GetxController {
  final RxBool isDarkMode = false.obs;

  void changeTheme() {
    Get.changeTheme(isDarkMode.value ? ThemeData.light() : ThemeData.dark());

    isDarkMode.value = !isDarkMode.value;
  }
}
