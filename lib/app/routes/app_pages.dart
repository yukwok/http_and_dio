import 'package:get/get.dart';

import '../modules/dio/bindings/dio_binding.dart';
import '../modules/dio/views/dio_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/http_view/bindings/http_view_binding.dart';
import '../modules/http_view/views/http_view_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.HTTP_VIEW,
      page: () => HttpViewView(),
      binding: HttpViewBinding(),
    ),
    GetPage(
      name: _Paths.DIO,
      page: () => DioView(),
      binding: DioBinding(),
    ),
  ];
}
