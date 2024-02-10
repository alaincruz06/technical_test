// Package imports:

import 'package:get/get.dart';
import 'package:technical_test/presentation/bindings/main_page_binding.dart';
import 'package:technical_test/presentation/pages/main_page/main_page.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static final routes = <GetPage<dynamic>>[
    ///Main Page
    ///Películas + FB Storage + Mapa

    GetPage(
      name: Routes.main,
      page: () => const MainPage(),
      binding: MainPageBinding(),
    ),
  ];
}
