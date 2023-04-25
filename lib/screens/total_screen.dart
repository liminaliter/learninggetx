import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxbottom/controller/chart_controller.dart';

class TotalScreen extends StatelessWidget {
  final MyController c = Get.put(MyController());
  TotalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Total items",
              style: TextStyle(
                fontSize: 30,
                color: Colors.amber,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Obx(
              () => Text(
                c.sum.toString(),
                style: const TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              width: 180,
              height: 70,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), color: Colors.amber),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      30,
                    ),
                  ),
                  backgroundColor: Colors.amber,
                ),
                onPressed: () => Get.back(),
                child: const Text(
                  "Go back",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
