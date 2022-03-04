import 'package:dio/dio.dart';
import 'package:get/get.dart';

class DioController extends GetxController {
  //
  final count = 0.obs;
  final uiText = "no data".obs;
  //
  void dioRequest() async {
    uiText.value = "data loading...";
    Dio dio = Dio();
    try {
      var url =
          'https://api.data.gov.hk/v2/filter?q=%7B%22resource%22%3A%22http%3A%2F%2Fwww.chp.gov.hk%2Ffiles%2Fmisc%2Fbuilding_list_chi.csv%22%2C%22section%22%3A1%2C%22format%22%3A%22json%22%2C%22filters%22%3A%5B%5B1%2C%22ne%22%2C%5B%22usa%22%5D%5D%5D%7D';

      var resposnse = await dio.get(url);

      // print(resposnse.body);
      uiText.value = resposnse.data.toString();
      print(uiText.value);
    } catch (e) {
      uiText.value = "Error occur: $e";
    }
  }

  @override
  void onInit() {
    dioRequest();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
