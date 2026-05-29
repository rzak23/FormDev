import 'package:formdev/apps/config/enum.dart';
import 'package:formdev/apps/models/dropdown_model.dart';

class ListOptions {
  static List<DropdownModel> opsiUuid() {
    List<DropdownModel> opsi;

    opsi = <DropdownModel>[];
    opsi.add(DropdownModel(label: "V1", value: "v1"));
    opsi.add(DropdownModel(label: "V4", value: "v4"));
    return opsi;
  }

  static List<DropdownModel> opsiLoremIpsum() {
    List<DropdownModel> opsi;

    opsi = <DropdownModel>[];
    opsi.add(DropdownModel(label: "Kata", value: LoremOpsi.words));
    opsi.add(DropdownModel(label: "Kalimat", value: LoremOpsi.sentences));
    opsi.add(DropdownModel(label: "Paragraf", value: LoremOpsi.paragraphs));
    return opsi;
  }
}
