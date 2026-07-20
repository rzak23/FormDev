import 'package:flutter/material.dart';
import 'package:formdev/core/utils/preference.dart';
import 'package:get/get.dart';

class ThemeController extends GetxController {
  final Rx<ThemeMode> _themeMode = ThemeMode.system.obs;

  ThemeMode get themeMode => _themeMode.value;

  @override
  void onInit() {
    super.onInit();
    _loadTheme();
  }

  Future<void> _loadTheme() async {
    Preference preference = Preference();
    ThemeMode tema = await preference.getThemeDefault();

    _themeMode.value = tema; // ini yang bikin Obx rebuild
    Get.changeThemeMode(tema); // opsional, biar tetap sinkron dgn Get.theme
  }

  setThemeMode(ThemeMode mode) {
    _themeMode.value = mode;
    Get.changeThemeMode(mode);
    _saveTheme(mode);
  }

  _saveTheme(ThemeMode mode) async {
    Preference preference = Preference();

    String tema;
    if (mode.index == 1) {
      tema = "light";
    } else {
      tema = "dark";
    }

    preference.setThemeDefault(tema);
  }
}
