import 'package:get/get.dart';
import 'package:http_and_dio/app/data/models/article.dart';
import 'package:http_and_dio/app/data/models/news_response.dart';
import 'package:http_and_dio/app/data/repositories/news_repo.dart';
import 'package:http_and_dio/app/data/services/http_service.dart';
import 'package:http_and_dio/app/data/services/http_service_impl.dart';

class NewsRepoImpl implements NewsRepo {
  late HttpService _httpService;
  String TOP_HEADLINES =
      'https://newsapi.org/v2/top-headlines?country=us&category=science';
  //&apiKey=c8c5a5ad41ce46388de81dd422994865

  String SEARCH_HEADLINES = 'https://newsapi.org/v2/everything?q=';

  NewsRepoImpl() {
    _httpService = Get.put(HttpServiceImpl());
    _httpService.init();
  }

  @override
  Future<List<Article>> getNewsHeadlinesByCountry(String country) async {
    try {
      print("Country:$country");

      final response = await _httpService.getRequest(TOP_HEADLINES);

      final parsedResponse = NewsResponse.fromJson(response.data);

      return parsedResponse.articles;
    } on Exception catch (e) {
      print(e);
      return [];
    }
  }

  @override
  Future<List<Article>> getSearchNews(String query) async {
    try {
      print('query:$query');
      final response = await _httpService.getRequest(SEARCH_HEADLINES + query);
      final parsedResponse = NewsResponse.fromJson(response.data);

      return parsedResponse.articles;
      // return [];
    } on Exception catch (e) {
      print(e);
      return [];
    }

    throw UnimplementedError();
  }
}
