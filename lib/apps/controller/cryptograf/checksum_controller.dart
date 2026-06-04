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

  PlatformFile? _selectedFile;

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

  onChangOpsi(ModeHash value) async {
    selectedOpsi.value = value;
    if (_selectedFile != null) {
      HashDigest hash = await _checkFileSum(_selectedFile!.bytes!);
      txtHasil.text = hash.toString();
    }
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

    _selectedFile = resultPicker.files.first;
    HashDigest hash = await _checkFileSum(_selectedFile!.bytes!);
    txtHasil.text = hash.toString();
  }

  Future<HashDigest> _checkFileSum(Uint8List bytesFile) async {
    HashDigest hashValue;
    switch (selectedOpsi.value) {
      case ModeHash.md5:
        hashValue = md5.convert(bytesFile);
        break;
      case ModeHash.sha1:
        hashValue = sha1.convert(bytesFile);
        break;
      case ModeHash.sha256:
        hashValue = sha256.convert(bytesFile);
        break;
      case ModeHash.sha512:
        hashValue = sha512.convert(bytesFile);
        break;
    }

    return hashValue;
  }

  onClickBack() {
    Get.back();
  }
}
