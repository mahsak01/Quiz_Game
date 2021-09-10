import 'package:flutter/material.dart';

import 'widget/quiz_widgets_max.dart';
import 'widget/quiz_widgets_min.dart';

class QuizPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if(MediaQuery.of(context).size.width>=820)
         return QuizWidgetsMax();
    else
      return QuizWidgetsMin();
  }
}
