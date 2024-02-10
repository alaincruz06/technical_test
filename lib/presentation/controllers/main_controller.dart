import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:technical_test/presentation/controllers/app_controller.dart';

class MainController extends GetxController {
  MainController({
    required this.logger,
    required this.appController,
  });

  final Logger logger;
  final AppController appController;
  final RxInt actualIndex = 0.obs;

  void changeIndex(int value) {
    logger.d('changeIndex() -> $value');
    actualIndex.value = value;
  }

  void changeTheme() {
    appController.changeTheme();
  }
}
