import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_navigation/routes/route_name.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

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
              "Page Satu",
              style: TextStyle(fontSize: 25),
            ),
            ElevatedButton(
                onPressed: () {
                  // Navigation Tanpa Nama
                  // navigator!.push(MaterialPageRoute(builder: (_) => Page2()));
                  // Get.off(const Page2(), arguments: "Hello");
                  // Dengan Nama
                  Get.toNamed(RouteName.page2);
                },
                child: const Text("Next Page >>"))
          ],
        )),
      ),
    );
  }
}
