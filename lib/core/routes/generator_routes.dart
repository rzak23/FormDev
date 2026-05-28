import 'package:formdev/apps/config/route_name.dart';
import 'package:formdev/core/bindings/generator_bindings.dart';
import 'package:formdev/views/generator/uuid.dart';
import 'package:get/get.dart';

class GeneratorRoutes {
  static final pages = <GetPage>[GetPage(name: RouteName.genUuid, page: () => const Uuid(), binding: UuidBinding())];
}
