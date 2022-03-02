import 'package:get/get.dart';

class TestingObsController extends GetxController {
  //TODO: Implement TestingObsController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  // Functions
  void increment() => count.value++;
}
