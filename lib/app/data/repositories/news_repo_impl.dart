import 'package:get/get.dart';
import 'package:http_and_dio/app/data/models/article.dart';
import 'package:http_and_dio/app/data/repositories/news_repo.dart';
import 'package:http_and_dio/app/data/services/http_service.dart';
import 'package:http_and_dio/app/data/services/http_service_impl.dart';

class NewsRepoImpl implements NewsRepo {
  late HttpService _httpService;
  String TOP_HEADLINES =
      'https://newsapi.org/v2/top-headlines?country=us&category=science';
  //&apiKey=c8c5a5ad41ce46388de81dd422994865
  NewsRepoImpl() {
    _httpService = Get.put(HttpServiceImpl());
    _httpService.init();
  }

  @override
  Future<List<Article>> getNewsHeadlinesByCountry(String country) async {
    try {
      print("Country:$country");

      var response = await _httpService.getRequest(TOP_HEADLINES);
      print(response.data);

      return response.data;
    } on Exception catch (e) {
      print(e);
    }
    return [];
  }

  @override
  Future<List<Article>> getSearchNews(String query) {
    // TODO: implement getSearchNews
    throw UnimplementedError();
  }
}
