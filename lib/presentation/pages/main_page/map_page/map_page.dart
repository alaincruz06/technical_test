import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:technical_test/presentation/controllers/map_controller.dart';

class MapPage extends GetView<MapController> {
  const MapPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('Hola Mundo')),
    );
  }
}
