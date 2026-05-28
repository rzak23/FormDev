import 'package:flutter/material.dart';
import 'package:formdev/apps/controller/theme_controller.dart';
import 'package:formdev/core/bindings/app_bindings.dart';
import 'package:formdev/core/routes/app_routes.dart';
import 'package:formdev/core/theme/app_colors.dart';
import 'package:get/get.dart';
import 'package:window_manager/window_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await windowManager.ensureInitialized();

  WindowOptions windowOptions = const WindowOptions(title: "FormDev", minimumSize: Size(800, 600), center: true);
  await windowManager.waitUntilReadyToShow(windowOptions, () async {
    await windowManager.show();
    await windowManager.focus();
  });
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeController = ThemeController();
    return Obx(
      () => GetMaterialApp(
        title: "FormDev",
        theme: AppColors.lightTheme(),
        darkTheme: AppColors.darkTheme(),
        themeMode: themeController.themeMode,
        initialRoute: AppRoutes.initial,
        initialBinding: SplashscreenBinding(),
        getPages: AppRoutes.pages,
      ),
    );
  }
}
