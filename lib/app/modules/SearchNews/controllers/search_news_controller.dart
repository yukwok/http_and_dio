import 'package:get/get.dart';

import '../../../data/models/article.dart';
import '../../../data/repositories/news_repo.dart';
import '../../../data/repositories/news_repo_impl.dart';

class SearchNewsController extends GetxController {
  var count = 3.obs;
  var isLoading = false.obs;
  List<Article> articles =
      [Article(title: 'title1'), Article(title: 'title2')].obs;

  late NewsRepo _newsRepo;

  final String _query = 'bitcoin';

  //  Functions

  loadNewsHeadline() async {
    isLoading.value = true;
    try {
      final result = await _newsRepo.getSearchNews(_query);

      if (result != null) {
        print('result found:$result');

        articles = result;
        isLoading.value = false;
      } else {
        print("no data received");
      }
    } on Exception catch (e) {
      print('Error occurs: $e');
    }
    isLoading.value = false;
  }

  loadNewsHeadlineByKeyword(String query) async {
    isLoading.value = true;
    try {
      final result = await _newsRepo.getSearchNews(query);

      if (result != null) {
        print('result found:$result');

        articles = result;
        isLoading.value = false;
      } else {
        print("no data received");
      }
    } on Exception catch (e) {
      print('Error occurs: $e');
    }
    isLoading.value = false;
  }

  increment() {
    count.value++;
  }

  setLoading() {
    isLoading.value = true;
    print(isLoading.toString());
  }

  setNotLoading() {
    isLoading.value = false;
    print(isLoading.toString());
  }

  NewsHeadlinesController() {
    _newsRepo = Get.find<NewsRepoImpl>();
  }

  @override
  void onInit() {
    super.onInit();
    _newsRepo = NewsRepoImpl();
    loadNewsHeadlineByKeyword('hong kong');
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
