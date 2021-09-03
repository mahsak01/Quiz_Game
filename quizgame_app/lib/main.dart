
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizgame_app/screens/home/home_page.dart';


void main() {
  runApp(
     MyApp(),
 );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Quiz Game',
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: HomePage(),

    );

  }
}
