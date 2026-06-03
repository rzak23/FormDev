import 'package:formdev/apps/controller/encoder/base64_text_controller.dart';
import 'package:get/get.dart';

class Base64TextBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Base64TextController>(() => Base64TextController(), fenix: true);
  }
}
