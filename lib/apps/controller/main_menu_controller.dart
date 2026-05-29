import 'package:formdev/apps/config/route_name.dart';
import 'package:get/get.dart';

class MainMenuController extends GetxController {
  onClickUuid() {
    Get.toNamed(RouteName.genUuid);
  }
}
