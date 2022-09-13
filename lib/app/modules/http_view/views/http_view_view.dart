// ignore_for_file: prefer_const_constructors, invalid_use_of_protected_member

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
              '過去14天內有嚴重急性呼吸綜合症冠狀病毒2的陽性檢測個案曾到訪的大廈名單',
              style: const TextStyle(fontSize: 20),
            ),
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.greenAccent)),
                onPressed: () {
                  controller.httpRequest();
                },
                child: Text('Update')),
            Divider(
              height: 2.0,
              color: Colors.green,
            ),
            Obx(() => Text(
                  'Total buildings found: ${controller.uiListString.length}',
                  style: const TextStyle(fontSize: 20),
                )),
            Expanded(
              child: Obx(
                () => (controller.uiListString.isEmpty)
                    ? Text("No data")
                    : ListView.builder(
                        itemCount: controller.uiListString.length,
                        itemBuilder: (context, index) {
                          return Card(
                            child: ListTile(
                              title: Text(controller.uiListString[index]),
                            ),
                          );
                        },
                      ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
