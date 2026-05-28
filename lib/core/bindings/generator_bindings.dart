import 'package:formdev/apps/controller/generator/uuid_controller.dart';
import 'package:get/get.dart';

class UuidBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UuidController>(() => UuidController(), fenix: true);
  }
}
