// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/testing_obs_controller.dart';

class TestingObsView extends GetView<TestingObsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TestingObsView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ElevatedButton(
                // ignore: prefer_const_constructors
                onPressed: () {
                  controller.increment();
                },
                child: Text('+1')),
            Obx(() => Text(
                  controller.count.value.toString(),
                  style: TextStyle(fontSize: 20),
                )),
          ],
        ),
      ),
    );
  }
}
