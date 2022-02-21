import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:http_and_dio/app/modules/dio/views/dio_view.dart';
import 'package:http_and_dio/app/modules/http_view/views/http_view_view.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromARGB(31, 249, 245, 245),

      appBar: AppBar(
        title: const Text('http and dio demo'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // ignore: prefer_const_constructors
          Expanded(
            flex: 1,
            child: const Center(
              child: Text(
                'Please select the demo',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          Expanded(
              flex: 10,
              child: Column(
                children: [
                  ElevatedButton(

                      // ignore: prefer_const_constructors
                      onPressed: () {
                        Get.toNamed('/http-view');
                      },
                      child: Text('大廈名單')),
                  ElevatedButton(
                      onPressed: () {
                        Get.toNamed('/dio');
                      },
                      child: Text('dio page')),
                  ElevatedButton(

                      // ignore: prefer_const_constructors
                      onPressed: () {
                        Get.toNamed('/news-headlines');
                      },
                      child: Text('news headlines')),
                  ElevatedButton(

                      // ignore: prefer_const_constructors
                      onPressed: () {
                        Get.toNamed('/search-news');
                      },
                      child: Text('search headlines')),
                ],
              )),
        ],
      ),
    );
  }
}
