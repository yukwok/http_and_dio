import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/news_headlines_controller.dart';

class NewsHeadlinesView extends GetView<NewsHeadlinesController> {
  @override
  Widget build(BuildContext context) {
    var _controller = Get.find<NewsHeadlinesController>();
    _controller.newsRepoImpl.getNewsHeadlinesByCountry('dummy country');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text('News Headlines'),
        centerTitle: true,
      ),
      body: Text(
        'NewsHeadlinesView is working',
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
