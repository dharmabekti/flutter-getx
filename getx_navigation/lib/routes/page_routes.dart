import 'package:get/get.dart';
import 'package:getx_navigation/pages/page1.dart';
import 'package:getx_navigation/pages/page2.dart';
import 'package:getx_navigation/pages/page3.dart';
import 'package:getx_navigation/pages/page4.dart';
import 'package:getx_navigation/pages/page5.dart';
import 'package:getx_navigation/routes/route_name.dart';

class NavRoute {
  static final pages = [
    GetPage(
      name: RouteName.page1,
      page: () => const Page1(),
    ),
    GetPage(
      name: RouteName.page2,
      page: () => const Page2(),
    ),
    GetPage(
      name: RouteName.page3,
      page: () => const Page3(),
    ),
    GetPage(
      name: RouteName.page4,
      page: () => const Page4(),
    ),
    GetPage(
      name: RouteName.page5,
      page: () => const Page5(),
    )
  ];
}
