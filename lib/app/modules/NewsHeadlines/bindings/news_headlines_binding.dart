import 'package:get/get.dart';
import 'package:http_and_dio/app/data/repositories/news_repo_impl.dart';

import '../controllers/news_headlines_controller.dart';

class NewsHeadlinesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NewsHeadlinesController>(
      () => NewsHeadlinesController(),
    );
    // Get.lazyPut<NewsRepoImpl>(
    //   () => NewsRepoImpl(),
    // );
    Get.put(NewsRepoImpl());
  }
}
