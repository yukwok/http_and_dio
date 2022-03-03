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
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text(
                  'Search News: ',
                  style: TextStyle(color: Colors.black87),
                ),
                SizedBox(
                  width: 2,
                ),
                Text(
                  controller.articles.length.toString(),
                  style: TextStyle(color: Colors.black87),
                ),
              ],
            ),
            centerTitle: true,
          ),
          body: Column(
            children: [
              Expanded(
                flex: 1,
                child: Row(
                  children: [
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      flex: 5,
                      child: TextField(
                        controller: controller.textEditingController,
                        // onEditingComplete: () {
                        //   print(controller.textEditingController.text);
                        // },
                        decoration: InputDecoration(
                            hintText: 'bitcoin',
                            label: Text('please enter keyword:')),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      flex: 2,
                      child: ElevatedButton(
                          onPressed: () {
                            print(
                                'search this=>${controller.textEditingController.text}');
                            controller.loadNewsHeadlineByKeyword(
                                controller.textEditingController.text);
                          },
                          child: Text('search')),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                  ],
                ),
              ),
              controller.isLoading.value
                  ? Expanded(
                      flex: 10,
                      child: const Center(
                        child: CircularProgressIndicator(),
                      ),
                    )
                  : Expanded(
                      flex: 10,
                      child: ListView.builder(
                          scrollDirection: Axis.vertical,
                          itemCount: controller.articles.length,
                          itemBuilder: (context, index) {
                            return ListTile(
                              isThreeLine: false,
                              dense: true,
                              title: Text(controller.articles[index].title),
                              subtitle: Column(
                                children: [
                                  Text(controller.articles[index].description),
                                  Text(controller.articles[index].content),
                                  Text(controller.articles[index].publishedAt),
                                  Text(controller.articles[index].author),
                                ],
                              ),
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
