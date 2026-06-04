import 'package:formdev/apps/controller/encoder/base64_image_controller.dart';
import 'package:formdev/apps/controller/encoder/base64_text_controller.dart';
import 'package:get/get.dart';

class Base64TextBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Base64TextController>(() => Base64TextController(), fenix: true);
  }
}

class Base64ImageBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Base64ImageController>(() => Base64ImageController(), fenix: true);
  }
}
