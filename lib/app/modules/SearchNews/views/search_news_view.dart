import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/search_news_controller.dart';

// import '../controllers/search_newscontroller.dart';

class SearchNewsView extends GetView<SearchNewsController> {
  // var controller = Get.find<SearchNewsController>();

  @override
  Widget build(BuildContext context) {
    // on the screen variables

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
      body: controller.isLoading.isTrue
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: 1,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Text(controller.count.toString()),
                    Text(controller.uiNumber.toString()),
                    ElevatedButton(
                        onPressed: () {
                          controller.increment();
                        },
                        child: Text("+1")),
                    ElevatedButton(
                        onPressed: () {
                          controller.decrement();
                        },
                        child: Text("-1")),
                    // Image.network(controller.articles[index].urlToImage),
                    // ListTile(
                    //   tileColor: index.isEven ? Colors.blue[50] : Colors.grey,
                    //   // title: Text(controller.articles[index].title +
                    //   //     " " +
                    //   //     controller.articles[index].publishedAt),
                    //   subtitle: Text(controller.articles[index].description +
                    //       " author:" +
                    //       controller.articles[index].author),
                    // ),
                    Divider(
                      color: Colors.black54,
                      height: 5,
                    )
                  ],
                );
              }),
    );
  }
}
