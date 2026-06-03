import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:formdev/apps/config/enum.dart';
import 'package:formdev/apps/models/dropdown_model.dart';
import 'package:formdev/core/utils/list_options.dart';
import 'package:get/get.dart';
import 'package:hashlib/hashlib.dart';

class ChecksumController extends GetxController {
  TextEditingController txtHasil = TextEditingController();
  TextEditingController txtCompare = TextEditingController();

  RxList<DropdownModel> opsiHash = <DropdownModel>[].obs;
  Rx<ModeHash> selectedOpsi = ModeHash.md5.obs;

  @override
  onInit() async {
    await initData();
    super.onInit();
  }

  Future<void> initData() async {
    opsiHash.value = ListOptions.opsiHash();
  }

  onChangOpsi(ModeHash value) {
    selectedOpsi.value = value;
  }

  onClickPilihFile() async {
    FilePickerResult? resultPicker = await FilePicker.pickFiles(
      allowMultiple: false,
      type: FileType.any,
      withData: true,
    );
    if (resultPicker == null) {
      return;
    }

    PlatformFile file = resultPicker.files.first;
    HashDigest hash = await _checkFileSum(file.bytes!);
    txtHasil.text = hash.toString();
  }

  Future<HashDigest> _checkFileSum(Uint8List bytesFile) async {
    HashDigest hashValue;
    if (selectedOpsi.value == ModeHash.md5) {
      hashValue = md5.convert(bytesFile);
    } else if (selectedOpsi.value == ModeHash.sha1) {
      hashValue = sha1.convert(bytesFile);
    } else if (selectedOpsi.value == ModeHash.sha256) {
      hashValue = sha256.convert(bytesFile);
    } else if (selectedOpsi.value == ModeHash.sha512) {
      hashValue = sha512.convert(bytesFile);
    } else {
      hashValue = md5.convert(bytesFile);
    }

    return hashValue;
  }

  onClickBack() {
    Get.back();
  }
}
