import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PasswordGenController extends GetxController {
  TextEditingController txtHasil = TextEditingController();

  RxInt panjangChar = 16.obs;
  RxBool upper = false.obs, lower = true.obs, number = true.obs, symbols = false.obs, noAmbigu = true.obs;

  static const _upperChars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  static const _lowerChars = 'abcdefghijklmnopqrstuvwxyz';
  static const _numChars = '0123456789';
  static const _symChars = '!@#\$%^&*-_=+';

  onClickCharOpsi(String opsi, bool value) {
    if (opsi == "upper") upper.value = value;
    if (opsi == "lower") lower.value = value;
    if (opsi == "number") number.value = value;
    if (opsi == "simbol") symbols.value = value;
  }

  onClickGenerate() {
    String password = _generateRandomPass();
    txtHasil.text = password;
  }

  String _generateRandomPass() {
    String suggest = "";
    if (upper.value) suggest += _upperChars;
    if (lower.value) suggest += _lowerChars;
    if (number.value) suggest += _numChars;
    if (symbols.value) suggest += _symChars;
    if (suggest.isEmpty) suggest += _lowerChars + _numChars;
    final rng = Random.secure();

    String result = List.generate(panjangChar.value, (_) => suggest[rng.nextInt(suggest.length)]).join();
    return result;
  }

  onClickBack() {
    Get.back();
  }
}
