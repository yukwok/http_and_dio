import 'package:get/get.dart';

import '../../../data/models/article.dart';
import '../../../data/repositories/news_repo.dart';
import '../../../data/repositories/news_repo_impl.dart';

class SearchNewsController extends GetxController {
  int _count = 999;
  var uiNumber = 0.obs;
  bool _isLoading = false;

  RxBool get isLoading => _isLoading.obs;
  RxInt get count => _count.obs;

  late final RxList<Article> _articles;

  late NewsRepo _newsRepo;

  //Functions
  setLoading() {
    _isLoading = true;
    print(_isLoading.toString());
  }

  setNotLoading() {
    _isLoading = false;
    print(_isLoading.toString());
  }

  increment() {
    _count++;
    uiNumber.value++;
  }

  decrement() {
    _count--;
    uiNumber.value--;
  }

  NewsHeadlinesController() {
    _newsRepo = Get.find<NewsRepoImpl>();
  }

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
}
