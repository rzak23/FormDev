import 'package:flutter/material.dart';
import 'package:formdev/core/utils/preference.dart';
import 'package:get/get.dart';

class ThemeController extends GetxController {
  final Rx<ThemeMode> _themeMode = ThemeMode.system.obs;

  ThemeMode get themeMode => _themeMode.value;

  @override
  onInit() async {
    await _loadTheme();
    super.onInit();
  }

  _loadTheme() async {
    Preference preference = Preference();

    ThemeMode tema = await preference.getThemeDefault();
    Get.changeThemeMode(tema);
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
