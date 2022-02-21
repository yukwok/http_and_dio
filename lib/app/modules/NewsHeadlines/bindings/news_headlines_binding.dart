import 'package:get/get.dart';

import '../controllers/news_headlines_controller.dart';

class NewsHeadlinesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NewsHeadlinesController>(
      () => NewsHeadlinesController(),
    );
  }
}
