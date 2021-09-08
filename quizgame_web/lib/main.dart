import 'package:flutter/material.dart';
import 'package:quizgame_web/screens/homescreen/HomePage.dart';
import 'package:quizgame_web/screens/welcomescreen/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: WelcomeScreen(),
    );
  }
}
