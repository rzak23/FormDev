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

class UkuranPanjangUtils {
  static double _toMeter(UkuranPanjang satuan) {
    switch (satuan) {
      case UkuranPanjang.angstrom:
        return 1e-10;
      case UkuranPanjang.nanometer:
        return 1e-9;
      case UkuranPanjang.mikrometer:
        return 1e-6;
      case UkuranPanjang.milimeter:
        return 1e-3;
      case UkuranPanjang.sentimeter:
        return 1e-2;
      case UkuranPanjang.meter:
        return 1;
      case UkuranPanjang.kilometer:
        return 1e3;
      case UkuranPanjang.inci:
        return 0.0254;
      case UkuranPanjang.kaki:
        return 0.3048;
      case UkuranPanjang.yard:
        return 0.9144;
      case UkuranPanjang.mil:
        return 1609.344;
      case UkuranPanjang.milLaut:
        return 1852;
    }
  }

  static double convert(double nilai, UkuranPanjang from, UkuranPanjang to) {
    if (from == to) return nilai;

    double nilaiDalamMeter = nilai * _toMeter(from);
    double hasilAkhir = nilaiDalamMeter / _toMeter(to);
    return hasilAkhir;
  }
}
