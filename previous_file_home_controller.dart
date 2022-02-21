import 'dart:convert';
import 'dart:io';

import 'package:get/get.dart';

class HomeController extends GetxController {
  final count = 0.obs;
  final uiMessage = "no connection".obs;

  // url for testing
  var url0 = 'https://jsonplaceholder.typicode.com/posts';

  var url =
      'https://api.data.gov.hk/v2/filter?q=%7B%22resource%22%3A%22http%3A%2F%2Fwww.chp.gov.hk%2Ffiles%2Fmisc%2Fbuilding_list_chi.csv%22%2C%22section%22%3A1%2C%22format%22%3A%22json%22%2C%22filters%22%3A%5B%5B1%2C%22ne%22%2C%5B%22usa%22%5D%5D%5D%7D';

  void httpRequest() async {
    try {
      HttpClient client = HttpClient();
      HttpClientRequest request = await client.getUrl(Uri.parse(url));

      HttpClientResponse response = await request.close();
      print(response.statusCode);

      client.close();

      uiMessage.value = await response.transform(utf8.decoder).join();
    } catch (error) {
      uiMessage.value = "Error occurs: $error";
    } finally {}
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
  void increment() => count.value++;
}
