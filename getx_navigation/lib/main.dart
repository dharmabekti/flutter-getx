import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_navigation/pages/page1.dart';
import 'package:getx_navigation/routes/page_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Flutter Getx Navigation',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const Page1(),
        initialRoute: '/',
        // unknownRoute: GetPage(name: '/404', page: () => const PageNotFound()),
        getPages: NavRoute.pages);
  }
}
