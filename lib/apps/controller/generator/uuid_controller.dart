import 'package:flutter/material.dart';
import 'package:formdev/apps/models/dropdown_model.dart';
import 'package:formdev/core/utils/list_options.dart';
import 'package:get/get.dart';
import 'package:uuid/constants.dart';
import 'package:uuid/uuid.dart';

class UuidController extends GetxController {
  RxList<DropdownModel> opsiUuid = <DropdownModel>[].obs;

  RxString selectedDefaultOpsiUuid = "v1".obs;
  RxBool showJml = true.obs;
  RxBool showCustomName = false.obs;

  TextEditingController txtJumlah = TextEditingController();
  TextEditingController txtOutput = TextEditingController();
  TextEditingController txtCustomName = TextEditingController();

  String versiUuid = "v1";
  int jumlah = 0;
  String customName = "";

  @override
  onInit() async {
    await initData();
    super.onInit();
  }

  Future<void> initData() async {
    opsiUuid.value = ListOptions.opsiUuid();
  }

  onChangeOpsi(String value) {
    versiUuid = value;
    if (versiUuid != "v5") {
      showJml.value = true;
      showCustomName.value = false;
    } else {
      showJml.value = false;
      showCustomName.value = true;
    }
  }

  onClickGenerate() async {
    List<String> output = [];

    output = await _generateIdWithJml();
    txtOutput.text = output.toString();
  }

  _generateIdWithJml() {
    Uuid id = Uuid();
    List<String> genId = [];

    switch (versiUuid) {
      case "v1":
        for (var i = 0; i < jumlah; i++) {
          genId.add(id.v1());
        }
        break;
      case "v4":
        for (var i = 0; i < jumlah; i++) {
          genId.add(id.v4());
        }
        break;
      case "v5":
        genId.add(id.v5(InternalConstants.zURL, customName));
        break;
    }

    return genId;
  }

  onClickReset() async {
    txtJumlah.text = "";
    jumlah = 0;
    txtOutput.text = "";
  }
}
