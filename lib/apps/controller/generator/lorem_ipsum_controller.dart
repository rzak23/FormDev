import 'package:flutter/material.dart';
import 'package:formdev/apps/config/enum.dart';
import 'package:formdev/apps/models/dropdown_model.dart';
import 'package:formdev/core/utils/list_options.dart';
import 'package:get/get.dart';
import 'package:lorem_gen/lorem_gen.dart';

class LoremIpsumController extends GetxController {
  RxList<DropdownModel> opsiLorem = <DropdownModel>[].obs;

  TextEditingController txtJmlKata = TextEditingController();
  TextEditingController txtJmlKalimat = TextEditingController();
  TextEditingController txtJmlParagraf = TextEditingController();
  TextEditingController txtHasil = TextEditingController();

  Rx<LoremOpsi> selectedOpsiLorem = LoremOpsi.words.obs;
  RxInt jlmKata = 0.obs;
  RxInt jmlKalimat = 0.obs;
  RxInt jmlParagraf = 0.obs;

  RxBool disableKata = false.obs;
  RxBool disableKalimat = false.obs;
  RxBool disableParagraf = false.obs;

  @override
  onInit() async {
    await initData();
    super.onInit();
  }

  Future<void> initData() async {
    opsiLorem.value = ListOptions.opsiLoremIpsum();
    await onChangeOpsi(selectedOpsiLorem.value);

    txtJmlKata.text = jlmKata.value.toString();
    txtJmlKalimat.text = jmlKalimat.value.toString();
    txtJmlParagraf.text = jmlParagraf.value.toString();
  }

  onChangeOpsi(LoremOpsi value) {
    if (value == LoremOpsi.words) {
      disableKata.value = false;
      disableKalimat.value = true;
      disableParagraf.value = true;
    } else if (value == LoremOpsi.sentences) {
      disableKata.value = true;
      disableKalimat.value = false;
      disableParagraf.value = true;
    } else if (value == LoremOpsi.paragraphs) {
      disableKata.value = true;
      disableKalimat.value = false;
      disableParagraf.value = false;
    }

    selectedOpsiLorem.value = value;
  }

  onClickGenerate() async {
    String result;

    result = await _generateLorem();
    txtHasil.text = result;
  }

  Future<String> _generateLorem() async {
    String output = "";
    switch (selectedOpsiLorem.value) {
      case LoremOpsi.words:
        output = Lorem.word(numWords: jlmKata.value);
        break;
      case LoremOpsi.sentences:
        output = Lorem.sentence(numSentences: jmlKalimat.value);
        break;
      case LoremOpsi.paragraphs:
        output = Lorem.paragraph(numSentences: jmlKalimat.value, numParagraphs: jmlParagraf.value);
        break;
    }

    return output;
  }

  onClickReset() {
    jmlKalimat.value = 0;
    jmlKalimat.value = 0;
    jmlParagraf.value = 0;

    txtJmlKata.text = jlmKata.value.toString();
    txtJmlKalimat.text = jmlKalimat.value.toString();
    txtJmlParagraf.text = jmlParagraf.value.toString();
    txtHasil.text = "";
  }

  onClickBack() {
    Get.back();
  }
}
