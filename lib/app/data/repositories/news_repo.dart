import 'package:http_and_dio/app/data/models/article.dart';

abstract class NewsRepo {
  Future<List<Article>> getNewsHeadlinesByCountry(String country);
  Future<List<Article>> getSearchNews(String query);
}
