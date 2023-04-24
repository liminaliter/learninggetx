import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:getxbottom/routes/routes.dart';

void main() {
  runApp(GetMaterialApp(
    initialRoute: AppPage.getnavbar(),
    getPages: AppPage.routes,
  ));
}
