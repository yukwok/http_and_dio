// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/http_view_controller.dart';

class HttpViewView extends GetView<HttpViewController> {
  const HttpViewView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<HttpViewController>();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('http demo'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              'press button to test the http request:',
              style: const TextStyle(fontSize: 20),
            ),
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.greenAccent)),
                onPressed: () {
                  controller.httpRequest();
                },
                child: Text('http request')),
            Divider(
              height: 2.0,
              color: Colors.green,
            ),
            Obx(() => Expanded(
                  child: SingleChildScrollView(
                    child: Text(
                      controller.uiText.string,
                      style: const TextStyle(fontSize: 12),
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
