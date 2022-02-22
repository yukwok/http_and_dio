import 'package:get/get.dart';
import 'package:http_and_dio/app/data/models/article.dart';
import 'package:http_and_dio/app/data/repositories/news_repo.dart';
import 'package:http_and_dio/app/data/services/http_service.dart';
import 'package:http_and_dio/app/data/services/http_service_impl.dart';

class NewsRepoImpl implements NewsRepo {
  late HttpService _httpService;

  NewsRepoImpl() {
    _httpService = Get.put(HttpServiceImpl());
    _httpService.init();
  }

  @override
  Future<List<Article>> getNewsHeadlinesByCountry(String country) async {
    try {
      var response = await _httpService.getRequest("url");
      throw UnimplementedError();

      return response.data;
    } on Exception catch (e) {
      // TODO
    }
  }

  @override
  Future<List<Article>> getSearchNews(String query) {
    // TODO: implement getSearchNews
    throw UnimplementedError();
  }
}
