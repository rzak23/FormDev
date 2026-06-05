import 'package:flutter/material.dart';
import 'package:formdev/apps/config/enum.dart';
import 'package:formdev/apps/models/dropdown_model.dart';
import 'package:formdev/core/utils/converter_utils.dart';
import 'package:formdev/core/utils/list_options.dart';
import 'package:get/get.dart';

class ConverterController extends GetxController {
  RxList<DropdownModel> opsiConverter = <DropdownModel>[].obs;
  RxList<DropdownModel> opsiUkuranDataFrom = <DropdownModel>[].obs;
  RxList<DropdownModel> opsiUkuranDataTo = <DropdownModel>[].obs;

  Rx<ModeConverter> selectedConverter = ModeConverter.data.obs;
  Rx<UkuranData> selectedUkuranFrom = UkuranData.bits.obs;
  Rx<UkuranData> selectedUkuranTo = UkuranData.kilobits.obs;

  TextEditingController txtFrom = TextEditingController();
  TextEditingController txtTo = TextEditingController();

  @override
  onInit() async {
    await initData();
    super.onInit();
  }

  initData() {
    opsiConverter.value = ListOptions.opsiConverter();
    opsiUkuranDataFrom.value = ListOptions.opsiData();
    opsiUkuranDataTo.value = ListOptions.opsiData();

    txtFrom.text = "0";
    txtTo.text = "0";
  }

  onChangeOpsi(ModeConverter value) {}

  onChangeSubOpsi(String tipe, dynamic value) {
    if (tipe == "from") {
      selectedUkuranFrom.value = value;
    } else {
      selectedUkuranTo.value = value;
    }
  }

  onHitungKonversi(String tipe, double nilai) {
    double hasil = 0;

    if (selectedConverter.value == ModeConverter.data) {
      if (tipe == "from") {
        hasil = UkuranDataUtils.convert(nilai, selectedUkuranFrom.value, selectedUkuranTo.value);
        txtTo.text = hasil.toString();
      } else {
        hasil = UkuranDataUtils.convert(nilai, selectedUkuranTo.value, selectedUkuranFrom.value);
        txtFrom.text = hasil.toString();
      }
    }
  }

  onClickBack() {
    Get.back();
  }
}
