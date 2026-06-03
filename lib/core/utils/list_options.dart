import 'package:formdev/apps/config/enum.dart';
import 'package:formdev/apps/models/dropdown_model.dart';
import 'package:nanoid2/nanoid2.dart';

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

  static List<DropdownModel> opsiNanoId() {
    List<DropdownModel> opsi;

    opsi = <DropdownModel>[];
    opsi.add(DropdownModel(label: "URL", value: Alphabet.url));
    opsi.add(DropdownModel(label: "Hexadecimal Lower", value: Alphabet.hexadecimalLowercase));
    opsi.add(DropdownModel(label: "Hexadecimal Upper", value: Alphabet.hexadecimalUppercase));
    opsi.add(DropdownModel(label: "Lower Char", value: Alphabet.lowercase));
    opsi.add(DropdownModel(label: "Upper Char", value: Alphabet.uppercase));
    opsi.add(DropdownModel(label: "Alpha Numeric", value: Alphabet.alphanumeric));
    opsi.add(DropdownModel(label: "Base64", value: Alphabet.base64));
    return opsi;
  }

  static List<DropdownModel> opsiHash() {
    List<DropdownModel> opsi;

    opsi = <DropdownModel>[];
    opsi.add(DropdownModel(label: "MD5", value: ModeHash.md5));
    opsi.add(DropdownModel(label: "SHA1", value: ModeHash.sha1));
    opsi.add(DropdownModel(label: "SHA256", value: ModeHash.sha256));
    opsi.add(DropdownModel(label: "SHA512", value: ModeHash.sha512));
    return opsi;
  }
}
