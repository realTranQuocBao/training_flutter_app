import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'src/uis/uis.dart';

void main() {
  runApp(GetMaterialApp(
    title: 'Training Flutter App',
    initialRoute: '/',
    getPages: [
      GetPage(
          name: '/',
          page: () => const HomeScreen(
                title: "Training Flutter App",
              )),
    ],
  ));
}