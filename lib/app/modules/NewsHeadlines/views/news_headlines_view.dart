import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:http_and_dio/app/data/repositories/news_repo_impl.dart';

import '../controllers/news_headlines_controller.dart';

class NewsHeadlinesView extends GetView<NewsHeadlinesController> {
  @override
  Widget build(BuildContext context) {
    //
    var _controller = Get.find<NewsHeadlinesController>();
    var _repo = Get.find<NewsRepoImpl>();
    // int  number= _controller.count.value;
    // String message = _repo.TOP_HEADLINES;

    //
    return Scaffold(
      drawer: Drawer(
          child: ListView(
        children: [
          // ListTile(
          //   title: Text("News Headlines"),
          //   onTap: () {
          //     Get.toNamed('/news-headlines');
          //   },
          //   leading: Icon(Icons.pages_outlined),
          // ),
          ListTile(
            title: Text("Search Headlines"),
            onTap: () {
              Get.toNamed('/search-news');
            },
            leading: Icon(Icons.search),
          ),
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
        backgroundColor: Colors.blueGrey,
        title: const Text('News Headlines'),
        centerTitle: true,
      ),
      body: Obx(() => _controller.isLoading.isTrue
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: _controller.articles.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Image.network(_controller.articles[index].urlToImage),
                    ListTile(
                      tileColor: index.isEven ? Colors.blue[50] : Colors.grey,
                      title: Text(_controller.articles[index].title +
                          " " +
                          _controller.articles[index].publishedAt),
                      subtitle: Text(_controller.articles[index].description +
                          " author:" +
                          _controller.articles[index].author),
                    ),
                    Divider(
                      color: Colors.black54,
                      height: 5,
                    )
                  ],
                );
              })),
    );
  }
}
