import 'package:flutter/material.dart';
import 'package:formdev/apps/config/route_name.dart';
import 'package:formdev/apps/controller/theme_controller.dart';
import 'package:formdev/core/utils/preference.dart';
import 'package:get/get.dart';

class MainMenuController extends GetxController {
  RxBool isDarkTheme = false.obs;

  @override
  onInit() async {
    await onLoadTheme();
    super.onInit();
  }

  onClickUuid() {
    Get.toNamed(RouteName.genUuid);
  }

  onClickLorem() {
    Get.toNamed(RouteName.genLoremIpsum);
  }

  onClickNano() {
    Get.toNamed(RouteName.genNanoId);
  }

  onClickBase64Text() {
    Get.toNamed(RouteName.base64Text);
  }

  onCliCkHashGenerator() {
    Get.toNamed(RouteName.hashGenerator);
  }

  onClickChecksum() {
    Get.toNamed(RouteName.checksum);
  }

  onClickPasswordGenerator() {
    Get.toNamed(RouteName.genPassword);
  }

  onClickQrGenerator() {
    Get.toNamed(RouteName.genQR);
  }

  onClickBase64Image() {
    Get.toNamed(RouteName.base64Image);
  }

  onClickConverter() {
    Get.toNamed(RouteName.converter);
  }

  onLoadTheme() async {
    Preference preference = Preference();

    ThemeMode theme = await preference.getThemeDefault();
    if (theme == ThemeMode.dark || theme == ThemeMode.system) {
      isDarkTheme.value = true;
    } else {
      isDarkTheme.value = false;
    }
  }

  onClickChangeTheme(bool isDark) async {
    ThemeController themeController = ThemeController();
    if (isDark) {
      themeController.setThemeMode(ThemeMode.dark);
    } else {
      themeController.setThemeMode(ThemeMode.light);
    }

    isDarkTheme.value = isDark;
  }
}
