import 'package:formdev/apps/config/route_name.dart';
import 'package:formdev/core/bindings/app_bindings.dart';
import 'package:formdev/core/routes/generator_routes.dart';
import 'package:formdev/views/main_menu.dart';
import 'package:formdev/views/splashscreen.dart';
import 'package:get/get.dart';

class AppRoutes {
  static String initial = RouteName.splashscreen;
  static final pages = <GetPage>[
    GetPage(name: RouteName.splashscreen, page: () => Splashscreen(), binding: SplashscreenBinding()),
    GetPage(name: RouteName.mainMenu, page: () => const MainMenu(), binding: MainMenuBinding()),
    ...GeneratorRoutes.pages,
  ];
}
