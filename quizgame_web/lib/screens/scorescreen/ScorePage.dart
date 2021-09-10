
import 'package:flutter/material.dart';
import 'widgets/score_widgets_max.dart';

import 'widgets/score_widgets_min.dart';
class ScorePage extends StatelessWidget {
  const ScorePage({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    if(MediaQuery.of(context).size.width>=800)
      return ScoreWidgetsMax();
    else
      return ScoreWidgetsMin();
  }
}
