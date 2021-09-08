import 'dart:html';

import 'package:flutter/material.dart';
import 'package:quizgame_web/screens/homescreen/widgets/home_widgets_max.dart';

import 'widgets/home_widgets_min.dart';
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if(MediaQuery.of(context).size.width>=800)
      return HomeWidgetsMax();
    else
      return HomeWidgetsMin();
  }
}
