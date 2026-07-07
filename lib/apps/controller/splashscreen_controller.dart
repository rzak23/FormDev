import 'package:formdev/apps/config/route_name.dart';
import 'package:get/get.dart';

class SplashscreenController extends GetxController {
  @override
  onReady() async {
    await readyInitData();
    super.onReady();
  }

  readyInitData() async {
    Future.delayed(const Duration(milliseconds: 3000), () async {
      Get.offAllNamed(RouteName.mainMenu);
    });
  }
}
