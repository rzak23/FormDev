import 'package:formdev/apps/controller/converter_controller.dart';
import 'package:formdev/apps/controller/main_menu_controller.dart';
import 'package:formdev/apps/controller/splashscreen_controller.dart';
import 'package:get/get.dart';

class SplashscreenBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashscreenController>(() => SplashscreenController(), fenix: true);
  }
}

class MainMenuBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MainMenuController>(() => MainMenuController(), fenix: true);
  }
}

class ConverterBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ConverterController>(() => ConverterController(), fenix: true);
  }
}
