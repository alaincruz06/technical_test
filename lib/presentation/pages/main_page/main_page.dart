import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_lazy_indexed_stack/flutter_lazy_indexed_stack.dart';
import 'package:technical_test/presentation/controllers/main_controller.dart';
import 'package:technical_test/presentation/pages/main_page/main_pages_export.dart';
import 'package:technical_test/presentation/widgets/bottom_navigation_bar/bottom_navigation_bar.dart';

class MainPage extends GetView<MainController> {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        appBar: AppBar(
          title: Text('app.appName'.tr),
          actions: [
            IconButton(
              onPressed: () => controller.changeTheme(),
              icon: Icon(controller.appController.isDarkMode.value
                  ? Icons.wb_sunny_outlined
                  : Icons.nightlight_outlined),
            ),
          ],
        ),
        bottomNavigationBar: const SalomonBottomNavigationBar(),
        body: LazyIndexedStack(
          index: controller.actualIndex.value,
          children: const [
            MoviesPage(),
            FBStoragePage(),
            MapPage(),
          ],
        ),
      ),
    );
  }
}
