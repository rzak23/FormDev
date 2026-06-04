import 'dart:convert';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class Base64ImageController extends GetxController {
  TextEditingController txtHasil = TextEditingController();

  PlatformFile? _selectedFile;
  Rx<Uint8List?> image = Rx<Uint8List?>(null);

  String base64codec = "";

  onClickPilihFile() async {
    FilePickerResult? filePicker = await FilePicker.pickFiles(
      allowMultiple: false,
      type: FileType.image,
      withData: true,
    );
    if (filePicker == null) {
      return;
    }

    _selectedFile = filePicker.files.first;
    image.value = _selectedFile?.bytes;
    await _prosesEncoder();
  }

  _prosesEncoder() async {
    String result = "";

    result = Base64Encoder().convert(image.value!);
    String extension = _selectedFile?.extension?.toLowerCase() ?? "jpeg";
    String mimeType = _getMimeType(extension);
    txtHasil.text = "data:$mimeType;base64,$result";
  }

  prosesDecoder(String decodeText) {
    String baseImage = "";
    if (decodeText.contains(';base64,')) {
      baseImage = decodeText.split(';base64,').last;
    }

    Uint8List imageBytes = Base64Decoder().convert(baseImage);
    image.value = imageBytes;
  }

  onClickBack() {
    Get.back();
  }

  String _getMimeType(String extension) {
    switch (extension) {
      case 'jpg':
      case 'jpeg':
        return 'image/jpeg';
      case 'png':
        return 'image/png';
      case 'gif':
        return 'image/gif';
      case 'webp':
        return 'image/webp';
      default:
        return 'image/jpeg';
    }
  }
}
