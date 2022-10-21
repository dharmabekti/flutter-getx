import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_navigation/pages/page5.dart';

class Page4 extends StatelessWidget {
  const Page4({Key? key}) : super(key: key);

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
              "Page Empat",
              style: TextStyle(fontSize: 25),
            ),
            ElevatedButton(
                onPressed: () {
                  // navigator!.pop();
                  Get.back();
                },
                child: const Text("<< Back Page")),
            ElevatedButton(
                onPressed: () {
                  // Navigation Tanpa Nama
                  // navigator!.push(MaterialPageRoute(builder: (_) => Page5()));
                  Get.off(const Page5());
                },
                child: const Text("Next Page >>"))
          ],
        )),
      ),
    );
  }
}
