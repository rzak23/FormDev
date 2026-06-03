import 'package:formdev/apps/config/route_name.dart';
import 'package:get/get.dart';

class MainMenuController extends GetxController {
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
}
