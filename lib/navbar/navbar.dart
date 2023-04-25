import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxbottom/controller/controller.dart';
import 'package:getxbottom/screens/chart.dart';
import 'package:getxbottom/screens/home.dart';
import 'package:getxbottom/screens/setting.dart';
import 'package:iconly/iconly.dart';

import '../screens/note.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  final controller = Get.put(NavBarController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavBarController>(builder: (context) {
      return Scaffold(
        body: IndexedStack(
          index: controller.tabIndex,
          children: [
            const Home(),
            const Note(),
            Chart(),
            const Setting(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.amberAccent,
          unselectedItemColor: Colors.grey.shade300,
          currentIndex: controller.tabIndex,
          onTap: controller.changeTapIndex,
          items: [
            _bottombarItem(IconlyBold.home, "Home"),
            _bottombarItem(IconlyBold.document, "Note"),
            _bottombarItem(IconlyBold.chart, "Chart"),
            _bottombarItem(IconlyBold.setting, "Setting"),
          ],
        ),
      );
    });
  }
}

_bottombarItem(IconData icon, String label) {
  return BottomNavigationBarItem(icon: Icon(icon), label: label);
}
