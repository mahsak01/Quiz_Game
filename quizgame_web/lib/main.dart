import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizgame_web/screens/homescreen/HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Quiz Game Web',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
