import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/search_news_controller.dart';

class SearchNewsView extends GetView<SearchNewsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
          child: ListView(
        children: [
          ListTile(
            title: Text("News Headlines"),
            onTap: () {
              Get.toNamed('/news-headlines');
            },
            leading: Icon(Icons.pages_outlined),
          ),
          // ListTile(
          //   title: Text("Search Headlines"),
          //   onTap: () {
          //     Get.toNamed('/search-news');
          //   },
          //   leading: Icon(Icons.search),
          // ),
          ListTile(
            title: Text("Home"),
            onTap: () {
              Get.toNamed('/home');
            },
            leading: Icon(Icons.home_filled),
          ),
        ],
      )),
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
