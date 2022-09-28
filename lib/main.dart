import 'package:car_rent/home_page.dart';
import 'package:car_rent/models/cars.dart';
import 'package:car_rent/start_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(),
      // ignore: null_check_always_fails
      home: StartScreen(),
    );
  }
}
