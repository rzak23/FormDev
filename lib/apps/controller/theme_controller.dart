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
}
