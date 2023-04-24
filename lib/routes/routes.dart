import 'package:get/get.dart';
import 'package:getxbottom/navbar/navbar.dart';

import '../screens/chart.dart';
import '../screens/home.dart';
import '../screens/note.dart';
import '../screens/setting.dart';

class AppPage {
  static List<GetPage> routes = [
    GetPage(name: navbar, page: () => const NavBar()),
    GetPage(name: home, page: () => const Home()),
    GetPage(name: note, page: () => const Note()),
    GetPage(name: chart, page: () => const Chart()),
    GetPage(name: setting, page: () => const Setting()),
  ];

  static getnavbar() => navbar;
  static gethome() => home;
  static getnot() => note;
  static getsetting() => setting;

  static String navbar = '/';
  static String home = '/home';
  static String note = '/note';
  static String chart = '/chart';
  static String setting = '/setting';
}
