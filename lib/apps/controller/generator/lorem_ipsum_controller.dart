import 'package:formdev/apps/config/enum.dart';
import 'package:formdev/apps/models/dropdown_model.dart';
import 'package:formdev/core/utils/list_options.dart';
import 'package:get/get.dart';
import 'package:lorem_gen/lorem_gen.dart';

class LoremIpsumController extends GetxController {
  RxList<DropdownModel> opsiLorem = <DropdownModel>[].obs;

  Rx<LoremOpsi> selectedOpsiLorem = LoremOpsi.words.obs;

  @override
  onInit() async {
    await initData();
    super.onInit();
  }

  Future<void> initData() async {
    opsiLorem.value = ListOptions.opsiLoremIpsum();
  }

  // _generateLorem() async {
  //   Lorem.word(); // numWords
  //   Lorem.sentence(); // sentenceLength, numSentences
  //   Lorem.paragraph(); //numSentences, numParagraf
  // }

  onChangeOpsi(LoremOpsi value) {}

  onClickBack() {
    Get.back();
  }
}
