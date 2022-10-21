import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Page5 extends StatelessWidget {
  const Page5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Getx Navigation"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const Text(
              "Page Lima",
              style: TextStyle(fontSize: 25),
            ),
            ElevatedButton(
                onPressed: () {
                  // navigator!.pop();
                  Get.back();
                },
                child: const Text("<< Back Page")),
          ],
        )),
      ),
    );
  }
}
