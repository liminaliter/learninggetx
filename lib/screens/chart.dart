import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxbottom/screens/total_screen.dart';
import 'package:iconly/iconly.dart';
import '../controller/chart_controller.dart';

class Chart extends StatelessWidget {
  Chart({super.key});
  final MyController c = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: const EdgeInsets.all(30),
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'books',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.amberAccent,
                    ),
                  ),
                  Expanded(child: Container()),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          25,
                        ),
                        color: Colors.amber),
                    child: IconButton(
                      icon: const Icon(IconlyBold.arrow_up_2),
                      onPressed: () => c.incrementbooks(),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Obx(
                    () => Text(
                      c.books.toString(),
                      style: const TextStyle(
                        fontSize: 30,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          25,
                        ),
                        color: Colors.amber),
                    child: IconButton(
                      icon: const Icon(IconlyBold.arrow_down_2),
                      onPressed: () => c.decresmentbooks(),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'chart',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.amberAccent,
                    ),
                  ),
                  Expanded(child: Container()),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          25,
                        ),
                        color: Colors.amber),
                    child: IconButton(
                      icon: const Icon(IconlyBold.arrow_up_2),
                      onPressed: () => c.increment(),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Obx(
                    () => Text(
                      c.charts.toString(),
                      style: const TextStyle(
                        fontSize: 30,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          25,
                        ),
                        color: Colors.amber),
                    child: IconButton(
                      icon: const Icon(IconlyBold.arrow_down_2),
                      onPressed: () => c.decresment(),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Expanded(child: Container()),
                  Container(
                    width: 150,
                    height: 70,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.amber),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            30,
                          ),
                        ),
                      ),
                      onPressed: () => Get.to(() => TotalScreen()),
                      child: const Text(
                        "Total",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.amberAccent,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
