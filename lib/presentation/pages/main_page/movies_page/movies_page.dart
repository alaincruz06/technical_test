import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:technical_test/presentation/controllers/movies_controller.dart';
import 'package:technical_test/presentation/pages/main_page/movies_page/widgets/card_swiper.dart';

class MoviesPage extends GetView<MoviesController> {
  const MoviesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => controller.isLoading.value
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : CustomCardSwiper(
              movies: controller.movies,
              loadNextPage: () => controller.loadNextPage(),
            )),
    );
  }
}
