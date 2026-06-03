import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Base64TextController extends GetxController {
  TextEditingController txtInput = TextEditingController();
  TextEditingController txtHasil = TextEditingController();

  RxString mode = "Encoder".obs;
  RxBool isEncoder = true.obs;

  String input = "";

  onChangeMode(bool value) {
    isEncoder.value = value;
    mode.value = value ? "Encoder" : "Decoder";
    txtInput.text = "";
    txtHasil.text = "";
  }

  onClickProses() {
    String result;
    if (isEncoder.value) {
      result = Base64Encoder().convert(input.codeUnits);
    } else {
      List<int> decodeBytes = Base64Decoder().convert(input);
      result = String.fromCharCodes(decodeBytes);
    }

    txtHasil.text = result.toString();
  }

  onClickBack() {
    Get.back();
  }
}
