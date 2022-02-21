abstract class NewsRepo {
  Future getNewsHeadlinesByCountry(String country);
  Future getSearchNews(String query);
}
