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
}
