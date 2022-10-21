// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_worker/controller/my_controller.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  final myC = Get.put(MyController());
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Workers"),
        actions: [
          IconButton(onPressed: () => myC.reset(), icon: Icon(Icons.refresh))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Obx(() => Text(
                  "Terjadi sesuatu: ${myC.count} x",
                  style: TextStyle(fontSize: 25),
                )),
            const SizedBox(
              height: 30,
            ),
            TextField(
              onChanged: (_) => myC.change(),
              decoration: InputDecoration(border: OutlineInputBorder()),
            )
          ],
        )),
      ),
    );
  }
}
