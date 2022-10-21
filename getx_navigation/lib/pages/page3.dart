import 'package:flutter/material.dart';
import 'package:getx_navigation/pages/page4.dart';
import 'package:get/get.dart';

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

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
              "Page Tiga",
              style: TextStyle(fontSize: 25),
            ),
            ElevatedButton(
                onPressed: () {
                  // navigator!.pop();
                  Get.back(result: "Ini data dari Page 3");
                },
                child: const Text("<< Back Page")),
            ElevatedButton(
                onPressed: () {
                  // Navigation Tanpa Nama
                  // navigator!.push(MaterialPageRoute(builder: (_) => Page4()));
                  // Get.off(const Page4());
                  // Dengan Nama
                  Get.toNamed('/page-4');
                },
                child: const Text("Next Page >>"))
          ],
        )),
      ),
    );
  }
}
