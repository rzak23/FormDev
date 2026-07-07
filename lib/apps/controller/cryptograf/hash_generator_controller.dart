import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hashlib/hashlib.dart';

class HashGeneratorController extends GetxController {
  TextEditingController txtInput = TextEditingController();
  TextEditingController txtHasilMD5 = TextEditingController();
  TextEditingController txtHasilSHA1 = TextEditingController();
  TextEditingController txtHasilSHA256 = TextEditingController();
  TextEditingController txtHasilSHA512 = TextEditingController();

  String input = "";

  onClickHash() async {
    Map<String, HashDigest> hashValue = _generateHash();

    txtHasilMD5.text = hashValue["md5"].toString();
    txtHasilSHA1.text = hashValue["sha1"].toString();
    txtHasilSHA256.text = hashValue["sha256"].toString();
    txtHasilSHA512.text = hashValue["sha512"].toString();
  }

  Map<String, HashDigest> _generateHash() {
    Map<String, HashDigest> data;

    data = {
      "md5": md5.string(input),
      "sha1": sha1.string(input),
      "sha256": sha256.string(input),
      "sha512": sha512.string(input),
    };
    return data;
  }

  onClickBack() {
    Get.back();
  }
}
