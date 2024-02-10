import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:technical_test/presentation/controllers/main_controller.dart';

class SalomonBottomNavigationBar extends GetView<MainController> {
  const SalomonBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => SalomonBottomBar(
        currentIndex: controller.actualIndex.value,
        onTap: (i) => controller.changeIndex(i),
        items: [
          /// Home / Movies
          SalomonBottomBarItem(
            icon: const Icon(Icons.movie_creation_rounded),
            title: Text('app.movies'.tr),
            selectedColor: Colors.purple,
          ),

          /// Firebase Storage page
          SalomonBottomBarItem(
            icon: const Icon(Icons.storage_rounded),
            title: Text('app.fbStorage'.tr),
            selectedColor: Colors.yellow,
          ),

          /// Map page
          SalomonBottomBarItem(
            icon: const Icon(Icons.map_rounded),
            title: Text('app.map'.tr),
            selectedColor: Colors.green,
          ),
        ],
      ),
    );
  }
}
