import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Screens/WlcomePage.dart';

void main() async {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomePage(),
    ),
  );
}
