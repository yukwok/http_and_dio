import 'package:get/get.dart';
import 'package:http_and_dio/app/data/models/article.dart';

import 'package:http_and_dio/app/data/repositories/news_repo.dart';
import 'package:http_and_dio/app/data/repositories/news_repo_impl.dart';

class NewsHeadlinesController extends GetxController {
  final count = 0.obs;

  late NewsRepo _newsRepo;

  late var isLoading = false.obs;

  NewsHeadlinesController() {
    _newsRepo = Get.find<NewsRepoImpl>();
  }
  List<Article> articles = [];

  loadNewsHeadline() async {
    isLoading.value = true;
    try {
      final result = await _newsRepo.getNewsHeadlinesByCountry("us");

      if (result != null) {
        print('result found:$result');

        articles = result;
        // rx_articles = result.obs;
        isLoading.value = false;
      } else {
        print("no data received");
      }
    } on Exception catch (e) {
      print('Error occurs: $e');
    }
    isLoading.value = false;
  }

  @override
  void onInit() {
    print('NewsHeadlinesController is initialed.');
    loadNewsHeadline();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
