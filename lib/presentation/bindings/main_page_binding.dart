import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:technical_test/domain/repositories/remote/movie_db_repository.dart';
import 'package:technical_test/presentation/controllers/app_controller.dart';
import 'package:technical_test/presentation/controllers/fbstorage_controller.dart';
import 'package:technical_test/presentation/controllers/movies_controller.dart';
import 'package:technical_test/presentation/controllers/main_controller.dart';
import 'package:technical_test/presentation/controllers/map_controller.dart';

class MainPageBinding extends Bindings {
  @override
  void dependencies() {
    Get
      ..lazyPut(
          () => MainController(
                logger: Get.find<Logger>(),
                appController: Get.find<AppController>(),
              ),
          fenix: true)
      ..lazyPut(
          () => MoviesController(
              logger: Get.find<Logger>(),
              movieDbRepository: Get.find<MovieDbRepository>()),
          fenix: true)
      ..lazyPut(
          () => FBStorageController(
                logger: Get.find<Logger>(),
              ),
          fenix: true)
      ..lazyPut(
          () => MapController(
                logger: Get.find<Logger>(),
              ),
          fenix: true);
  }
}
