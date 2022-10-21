// ignore_for_file: avoid_print

import 'package:get/get.dart';

class MyController extends GetxController {
  var count = 0.obs;
  void change() => count++;
  void reset() => count.value = 0;

  @override
  void onInit() {
    // Workers
    // Callback akan dijalankan setiap kali ada perubahan pada variabel count
    ever(count, (_) => print("Running..."));
    // Callback akan dijalankan setiap kali ada perubahan pada variabel count, data, dll
    everAll([count], (_) => print("Running..."));
    // Callback akan dijalankan setiap kali ada perubahan pada variabel count dan hanya dijalankan sekali
    once(count, (_) => print("Running..."));
    // Menjalankan callback setelah jeda 3 detik setelah aksi selesai
    debounce(count, (_) => print("Running in 3sec..."),
        time: const Duration(seconds: 3));
    // Menjalankan callback setelah jeda 3 detik
    interval(count, (_) => print("Running Interval in 3sec..."),
        time: const Duration(seconds: 3));
    super.onInit();
  }
}
