import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyController extends GetxController {
  var charts = 0.obs;
  var books = 0.obs;
  int get sum => books.value + charts.value;

  increment() {
    charts.value++;
  }

  decresment() {
    if (charts.value <= 0) {
      Get.snackbar("Buying charts", "DO SOME THING",
          icon: const Icon(Icons.alarm),
          barBlur: 100,
          snackPosition: SnackPosition.TOP,
          forwardAnimationCurve: Curves.elasticInOut,
          reverseAnimationCurve: Curves.easeOut,
          isDismissible: true,
          duration: const Duration(
            seconds: 2,
          ));
    } else {
      charts.value--;
    }
  }

  incrementbooks() {
    books.value++;
  }

  decresmentbooks() {
    if (books.value <= 0) {
      Get.snackbar("Buying Books", "LIMINALITY",
          icon: const Icon(Icons.alarm),
          barBlur: 100,
          snackPosition: SnackPosition.TOP,
          forwardAnimationCurve: Curves.elasticInOut,
          reverseAnimationCurve: Curves.easeOut,
          isDismissible: true,
          duration: const Duration(
            seconds: 2,
          ));
    } else {
      books.value--;
    }
  }
}
