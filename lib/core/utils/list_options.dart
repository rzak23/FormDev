import 'package:formdev/apps/models/dropdown_model.dart';

class ListOptions {
  static List<DropdownModel> opsiUuid() {
    List<DropdownModel> opsi;

    opsi = <DropdownModel>[];
    opsi.add(DropdownModel(label: "V1", value: "v1"));
    opsi.add(DropdownModel(label: "V4", value: "v4"));
    return opsi;
  }
}
