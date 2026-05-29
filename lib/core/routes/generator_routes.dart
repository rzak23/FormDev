import 'package:formdev/apps/config/route_name.dart';
import 'package:formdev/core/bindings/generator_bindings.dart';
import 'package:formdev/views/generator/lorem_ipsum.dart';
import 'package:formdev/views/generator/uuid.dart';
import 'package:get/get.dart';

class GeneratorRoutes {
  static final pages = <GetPage>[
    GetPage(name: RouteName.genUuid, page: () => const Uuid(), binding: UuidBinding()),
    GetPage(name: RouteName.genLoremIpsum, page: () => const LoremIpsum(), binding: LoremIpsumBinding()),
  ];
}
