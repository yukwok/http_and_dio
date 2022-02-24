// ignore_for_file: avoid_print

import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
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

  initInterceptor() {
    _dio.interceptors.add(InterceptorsWrapper(
      onError: (e, handler) {
        print(e.message);
      },
      // onRequest: (request, handler) {
      //   print(request.method + " " + request.path);
      // },
      // onResponse: (response, handler) {
      //   print('status code:${response.statusCode}');
      //   print('response:$response');
      // },
    ));
  }

  @override
  void init() {
    _dio = Dio(BaseOptions(
      baseUrl: BASE_URL,
      headers: {
        "Authorization": "Bearer $API_KEY"
      }, //<== TODO: what is this header???
    ));

    initInterceptor();
  }
}
