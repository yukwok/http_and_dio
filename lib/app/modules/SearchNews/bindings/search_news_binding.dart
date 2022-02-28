import 'package:get/get.dart';

import '../controllers/search_news_controller.dart';

class SearchNewsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SearchNewsController>(
      () => SearchNewsController(),
    );
  }
}
