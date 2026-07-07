import 'package:formdev/apps/controller/cryptograf/checksum_controller.dart';
import 'package:formdev/apps/controller/cryptograf/hash_generator_controller.dart';
import 'package:get/get.dart';

class HashGeneratorBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HashGeneratorController>(() => HashGeneratorController(), fenix: true);
  }
}

class ChecksumBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ChecksumController>(() => ChecksumController(), fenix: true);
  }
}
