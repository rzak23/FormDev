import 'package:formdev/apps/config/route_name.dart';
import 'package:formdev/core/bindings/generator_bindings.dart';
import 'package:formdev/views/generator/lorem_ipsum.dart';
import 'package:formdev/views/generator/nanoid_gen.dart';
import 'package:formdev/views/generator/password_gen.dart';
import 'package:formdev/views/generator/uuid.dart';
import 'package:get/get.dart';

class GeneratorRoutes {
  static final pages = <GetPage>[
    GetPage(name: RouteName.genUuid, page: () => const Uuid(), binding: UuidBinding()),
    GetPage(name: RouteName.genLoremIpsum, page: () => const LoremIpsum(), binding: LoremIpsumBinding()),
    GetPage(name: RouteName.genNanoId, page: () => const NanoidGen(), binding: NanoIDBinding()),
    GetPage(name: RouteName.genPassword, page: () => const PasswordGen(), binding: PasswordGenBinding()),
  ];
}
