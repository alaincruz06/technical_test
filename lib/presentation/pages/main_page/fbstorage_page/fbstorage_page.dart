import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:technical_test/presentation/controllers/fbstorage_controller.dart';

class FBStoragePage extends GetView<FBStorageController> {
  const FBStoragePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('Hola Mundo')),
    );
  }
}
