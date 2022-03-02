// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/search_news_controller.dart';

// import '../controllers/search_newscontroller.dart';

class SearchNewsView extends GetView<SearchNewsController> {
  var controller = Get.find<SearchNewsController>();

  @override
  Widget build(BuildContext context) {
    // on the screen variables

    return Obx(() => Container(
            child: Scaffold(
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
          body: controller.isLoading.value
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : Column(
                  children: [
                    Expanded(
                      child: TextField(
                        onChanged: (value) {
                          print(value);
                        },
                        controller: TextEditingController(text: 'hello'),
                        decoration: InputDecoration(
                            hintText: 'bitcoin',
                            label: Text('please enter keyword:')),
                      ),
                      flex: 1,
                    ),
                    Expanded(
                      flex: 10,
                      child: ListView.builder(
                          scrollDirection: Axis.vertical,
                          itemCount: controller.articles.length,
                          itemBuilder: (context, index) {
                            return ListTile(
                              title: Text(controller.articles[index].title),
                              subtitle:
                                  Text(controller.articles[index].description),
                              leading: Image.network(
                                  controller.articles[index].urlToImage),
                            );
                          }),
                    ),
                  ],
                ),
        )));
  }
}

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
