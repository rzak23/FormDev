import 'package:flutter/material.dart';
import 'package:formdev/apps/models/dropdown_model.dart';
import 'package:formdev/core/utils/list_options.dart';
import 'package:get/get.dart';
import 'package:nanoid2/nanoid2.dart';

class NanoidGenController extends GetxController {
  RxList<DropdownModel> listOpsi = <DropdownModel>[].obs;

  TextEditingController txtPanjangChar = TextEditingController();
  TextEditingController txtHasil = TextEditingController();

  RxString selectedOpsi = Alphabet.alphanumeric.obs;
  RxInt panjangChar = 16.obs;

  @override
  onInit() async {
    await initData();
    super.onInit();
  }

  Future<void> initData() async {
    listOpsi.value = ListOptions.opsiNanoId();
    await onChangeOpsi(selectedOpsi.value);

    txtPanjangChar.text = panjangChar.value.toString();
  }

  onChangeOpsi(String value) {
    selectedOpsi.value = value;
  }

  onClickGenerate() {
    String nanoid = _generateNano();
    txtHasil.text = nanoid;
  }

  String _generateNano() {
    String id = nanoid(alphabet: selectedOpsi.value, length: panjangChar.value);
    return id;
  }

  onClickBack() {
    Get.back();
  }
}
