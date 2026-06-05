import 'package:formdev/apps/config/enum.dart';

class UkuranDataUtils {
  static double _toBits(UkuranData satuan) {
    switch (satuan) {
      case UkuranData.bits:
        return 1;
      case UkuranData.nibble:
        return 4;
      case UkuranData.bytes:
        return 8;
      case UkuranData.kilobits:
        return 1e3;
      case UkuranData.kibibits:
        return 1024;
      case UkuranData.kilobytes:
        return 8e3;
      case UkuranData.kibibytes:
        return 8 * 1024;
      case UkuranData.megabits:
        return 1e6;
      case UkuranData.mebibits:
        return 1024 * 1024;
      case UkuranData.megabytes:
        return 8e6;
      case UkuranData.mebibytes:
        return 8 * 1024 * 1024;
      case UkuranData.gigabits:
        return 1e9;
      case UkuranData.gibibits:
        return 1024 * 1024 * 1024;
      case UkuranData.gigabytes:
        return 8e9;
      case UkuranData.gibibytes:
        return 8 * 1024 * 1024 * 1024;
    }
  }

  static double convert(double nilai, UkuranData from, UkuranData to) {
    if (from == to) return nilai;

    final double nilaiDalamBits = nilai * _toBits(from);
    final double hasilAkhir = nilaiDalamBits / _toBits(to);
    return hasilAkhir;
  }
}
