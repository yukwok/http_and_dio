import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/search_news_controller.dart';

class SearchNewsView extends GetView<SearchNewsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        title: Text(
          'Search News',
          style: TextStyle(color: Colors.black87),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'SearchNewsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
