import 'package:flutter/material.dart';
import 'package:formdev/apps/config/enum.dart';
import 'package:formdev/apps/models/dropdown_model.dart';
import 'package:formdev/core/utils/converter_utils.dart';
import 'package:formdev/core/utils/list_options.dart';
import 'package:get/get.dart';

class ConverterController extends GetxController {
  RxList<DropdownModel> opsiConverter = <DropdownModel>[].obs;
  RxList<DropdownModel> opsiUkuranFrom = <DropdownModel>[].obs;
  RxList<DropdownModel> opsiUkuranTo = <DropdownModel>[].obs;

  Rx<ModeConverter> selectedConverter = ModeConverter.data.obs;
  Rx<dynamic> selectedUkuranFrom = Rx<dynamic>(null);
  Rx<dynamic> selectedUkuranTo = Rx<dynamic>(null);

  Rx<UkuranData> defaultDataFrom = UkuranData.bits.obs;
  Rx<UkuranData> defaultDataTo = UkuranData.kilobits.obs;
  Rx<UkuranPanjang> defaultPanjangFrom = UkuranPanjang.meter.obs;
  Rx<UkuranPanjang> defaultPanjangTo = UkuranPanjang.kilometer.obs;

  TextEditingController txtFrom = TextEditingController();
  TextEditingController txtTo = TextEditingController();

  @override
  onInit() async {
    await initData();
    super.onInit();
  }

  initData() {
    opsiConverter.value = ListOptions.opsiConverter();
    opsiUkuranFrom.value = ListOptions.opsiData();
    opsiUkuranTo.value = ListOptions.opsiData();

    selectedUkuranFrom.value = defaultDataFrom.value;
    selectedUkuranTo.value = defaultDataTo.value;

    txtFrom.text = "0";
    txtTo.text = "0";
  }

  onChangeOpsi(ModeConverter value) {
    opsiUkuranFrom.clear();
    opsiUkuranTo.clear();
    if (value == ModeConverter.data) {
      opsiUkuranFrom.value = ListOptions.opsiData();
      opsiUkuranTo.value = ListOptions.opsiData();

      selectedUkuranFrom.value = defaultDataFrom.value;
      selectedUkuranTo.value = defaultDataTo.value;
    } else if (value == ModeConverter.panjang) {
      opsiUkuranFrom.value = ListOptions.opsiPanjang();
      opsiUkuranTo.value = ListOptions.opsiPanjang();

      selectedUkuranFrom.value = defaultPanjangFrom.value;
      selectedUkuranTo.value = defaultPanjangTo.value;
    }

    opsiUkuranFrom.refresh();
    opsiUkuranTo.refresh();
    selectedConverter.value = value;
  }

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
    } else if (selectedConverter.value == ModeConverter.panjang) {
      if (tipe == "from") {
        hasil = UkuranPanjangUtils.convert(nilai, selectedUkuranFrom.value, selectedUkuranTo.value);
        txtTo.text = hasil.toString();
      } else {
        hasil = UkuranPanjangUtils.convert(nilai, selectedUkuranTo.value, selectedUkuranFrom.value);
        txtFrom.text = hasil.toString();
      }
    }
  }

  onClickBack() {
    Get.back();
  }
}
