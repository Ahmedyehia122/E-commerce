
import 'package:e_commerce_app/core/constant/color.dart';
import 'package:e_commerce_app/routes.dart';
import 'package:e_commerce_app/view/screen/onbording.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: 'playfairDisplay',
          textTheme: const TextTheme(
            headline1: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: AppColor.black),
            bodyText1: TextStyle(
              height: 2,
              color: AppColor.grey,
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          )),
      home: const OnBording(),
      routes: routes,
    );
  }
}
