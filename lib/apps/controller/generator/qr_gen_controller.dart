import 'package:flutter/material.dart';
import 'package:get/get.dart';

class QrGenController extends GetxController {
  TextEditingController txtInput = TextEditingController();

  RxString input = "".obs;

  onClickBack() {
    Get.back();
  }
}
