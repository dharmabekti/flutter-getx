import 'package:flutter/material.dart';
import 'package:getx_navigation/pages/page3.dart';
import 'package:get/get.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

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
            Text(
              "${Get.arguments.toString()} Page Dua",
              style: TextStyle(fontSize: 25),
            ),
            ElevatedButton(
                onPressed: () {
                  // navigator!.pop();
                  Get.back();
                },
                child: const Text("<< Back Page")),
            ElevatedButton(
                onPressed: () async {
                  // Navigation Tanpa Nama
                  // navigator!.push(MaterialPageRoute(builder: (_) => Page3()));
                  var data = await Get.to(const Page3());
                  print(data);
                },
                child: const Text("Next Page >>"))
          ],
        )),
      ),
    );
  }
}
