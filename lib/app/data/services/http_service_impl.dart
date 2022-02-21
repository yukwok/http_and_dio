import 'package:dio/dio.dart';
import 'package:http_and_dio/app/data/services/http_service.dart';

String BASE_URL = "https://newsapi.org";
String API_KEY = "c8c5a5ad41ce46388de81dd422994865";

class HttpServiceImpl implements HttpService {
  late Dio _dio;
  @override
  Future<Response> getRequest(String url) async {
    Response response;
    try {
      response = await _dio.get(url);
    } on DioError catch (e) {
      print(e.message);
      throw Exception(e.message);
    }

    return response;
  }

  @override
  void init() {
    _dio = Dio(BaseOptions(
      baseUrl: BASE_URL,
      headers: {
        "Authorization": "Bearer $API_KEY"
      }, //<== TODO: what is this header???
    ));
  }
}
