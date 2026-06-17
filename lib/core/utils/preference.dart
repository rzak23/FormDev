import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:formdev/apps/config/preference_name.dart';
import 'package:formdev/core/utils/string_utils.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Preference {
  Future<ThemeMode> getThemeDefault() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    String? tema = prefs.getString(PrefKey.key(PreferenceName.tema));
    ThemeMode theme;

    if (StringUtils.isNullOrEmpty(tema)) {
      theme = ThemeMode.system;
    } else {
      theme = (tema == "dark") ? ThemeMode.dark : ThemeMode.light;
    }

    return theme;
  }

  Future<void> setThemeDefault(String mode) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    await prefs.setString(PrefKey.key(PreferenceName.tema), mode);
  }
}

class PrefKey {
  static String key(String value) {
    return kDebugMode ? "debug_$value" : value;
  }
}
