import 'package:formdev/apps/controller/splashscreen_controller.dart';
import 'package:get/get.dart';

class SplashscreenBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashscreenController>(() => SplashscreenController(), fenix: true);
  }
}
