import 'package:formdev/apps/config/route_name.dart';
import 'package:formdev/core/bindings/cryptograf_bindings.dart';
import 'package:formdev/views/cryptograf/hash_generator.dart';
import 'package:get/get.dart';

class CryptografRoutes {
  static final pages = <GetPage>[
    GetPage(name: RouteName.hashGenerator, page: () => const HashGenerator(), binding: HashGeneratorBinding()),
  ];
}
