import 'package:formdev/apps/config/enum.dart';
import 'package:formdev/apps/models/dropdown_model.dart';
import 'package:nanoid2/nanoid2.dart';

class ListOptions {
  static List<DropdownModel> opsiUuid() {
    List<DropdownModel> opsi;

    opsi = <DropdownModel>[];
    opsi.add(DropdownModel(label: "V1", value: "v1"));
    opsi.add(DropdownModel(label: "V4", value: "v4"));
    opsi.add(DropdownModel(label: "V5", value: "v5"));
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

  static List<DropdownModel> opsiConverter() {
    List<DropdownModel> opsi;

    opsi = <DropdownModel>[];
    opsi.add(DropdownModel(label: "Data", value: ModeConverter.data));
    opsi.add(DropdownModel(label: "Panjang", value: ModeConverter.panjang));
    return opsi;
  }

  static List<DropdownModel> opsiData() {
    List<DropdownModel> opsi;

    opsi = <DropdownModel>[];
    opsi.add(DropdownModel(label: "Bits", value: UkuranData.bits));
    opsi.add(DropdownModel(label: "Nibble", value: UkuranData.nibble));
    opsi.add(DropdownModel(label: "Bytes", value: UkuranData.bytes));
    opsi.add(DropdownModel(label: "Kilobits", value: UkuranData.kilobits));
    opsi.add(DropdownModel(label: "Kibibits", value: UkuranData.kibibits));
    opsi.add(DropdownModel(label: "Kilobytes", value: UkuranData.kilobytes));
    opsi.add(DropdownModel(label: "Kibibytes", value: UkuranData.kibibytes));
    opsi.add(DropdownModel(label: "Megabits", value: UkuranData.megabits));
    opsi.add(DropdownModel(label: "Mebibits", value: UkuranData.mebibits));
    opsi.add(DropdownModel(label: "Megabytes", value: UkuranData.megabytes));
    opsi.add(DropdownModel(label: "Mebibytes", value: UkuranData.mebibytes));
    opsi.add(DropdownModel(label: "Gigabits", value: UkuranData.gigabits));
    opsi.add(DropdownModel(label: "Gibibits", value: UkuranData.gibibits));
    opsi.add(DropdownModel(label: "Gigabytes", value: UkuranData.gigabytes));
    opsi.add(DropdownModel(label: "Gibibytes", value: UkuranData.gibibytes));
    return opsi;
  }

  static List<DropdownModel> opsiPanjang() {
    List<DropdownModel> opsi;

    opsi = <DropdownModel>[];
    opsi.add(DropdownModel(label: "Angstrom", value: UkuranPanjang.angstrom));
    opsi.add(DropdownModel(label: "Nanometer", value: UkuranPanjang.nanometer));
    opsi.add(DropdownModel(label: "Mikrometer", value: UkuranPanjang.mikrometer));
    opsi.add(DropdownModel(label: "Milimeter", value: UkuranPanjang.milimeter));
    opsi.add(DropdownModel(label: "Centimeter", value: UkuranPanjang.sentimeter));
    opsi.add(DropdownModel(label: "Meter", value: UkuranPanjang.meter));
    opsi.add(DropdownModel(label: "Kilometer", value: UkuranPanjang.kilometer));
    opsi.add(DropdownModel(label: "Inci", value: UkuranPanjang.inci));
    opsi.add(DropdownModel(label: "Kaki", value: UkuranPanjang.kaki));
    opsi.add(DropdownModel(label: "Yard", value: UkuranPanjang.yard));
    opsi.add(DropdownModel(label: "Mil", value: UkuranPanjang.mil));
    opsi.add(DropdownModel(label: "Mil Laut", value: UkuranPanjang.milLaut));
    return opsi;
  }
}
