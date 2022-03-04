import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/dio_controller.dart';

class DioView extends GetView<DioController> {
  var diocontroller = Get.find<DioController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        title: Text('dio demo'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            // ignore: prefer_const_constructors
            Text(
              'press button to test the dio request:',
              style: const TextStyle(fontSize: 20),
            ),
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.purpleAccent)),
                onPressed: () {
                  controller.dioRequest();
                },
                child: const Text('dio request')),
            Expanded(
              child: Obx(() => SingleChildScrollView(
                    child: Text(
                      diocontroller.uiText.value,
                      style: const TextStyle(fontSize: 20),
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
