import 'package:get/get.dart';

import '../controllers/http_view_controller.dart';

class HttpViewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HttpViewController>(
      () => HttpViewController(),
    );
  }
}
