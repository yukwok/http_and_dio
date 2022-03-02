import 'package:get/get.dart';

import '../controllers/testing_obs_controller.dart';

class TestingObsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TestingObsController>(
      () => TestingObsController(),
    );
  }
}
