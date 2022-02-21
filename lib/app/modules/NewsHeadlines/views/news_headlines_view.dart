import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/news_headlines_controller.dart';

class NewsHeadlinesView extends GetView<NewsHeadlinesController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text('News Headlines'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'NewsHeadlinesView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
