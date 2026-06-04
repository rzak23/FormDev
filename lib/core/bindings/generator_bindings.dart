import 'package:formdev/apps/controller/generator/lorem_ipsum_controller.dart';
import 'package:formdev/apps/controller/generator/nanoid_gen_controller.dart';
import 'package:formdev/apps/controller/generator/password_gen_controller.dart';
import 'package:formdev/apps/controller/generator/qr_gen_controller.dart';
import 'package:formdev/apps/controller/generator/uuid_controller.dart';
import 'package:get/get.dart';

class UuidBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UuidController>(() => UuidController(), fenix: true);
  }
}

class LoremIpsumBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoremIpsumController>(() => LoremIpsumController(), fenix: true);
  }
}

class NanoIDBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NanoidGenController>(() => NanoidGenController(), fenix: true);
  }
}

class PasswordGenBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PasswordGenController>(() => PasswordGenController(), fenix: true);
  }
}

class QrGenBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<QrGenController>(() => QrGenController(), fenix: true);
  }
}
