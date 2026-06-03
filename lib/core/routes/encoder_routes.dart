import 'package:formdev/apps/config/route_name.dart';
import 'package:formdev/core/bindings/encoder_binding.dart';
import 'package:formdev/views/encoder/base64_text.dart';
import 'package:get/get.dart';

class EncoderRoutes {
  static final pages = <GetPage>[
    GetPage(name: RouteName.base64Text, page: () => const Base64Text(), binding: Base64TextBinding()),
  ];
}
