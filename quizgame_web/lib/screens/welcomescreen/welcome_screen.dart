import 'package:flutter/material.dart';

import 'widgets/welcome_widgets_max.dart';
import 'widgets/welcome_widgets_min.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if(MediaQuery.of(context).size.width>=800)
      return WelcomeWidgetsMax();
    else
      return WelcomeWidgetsMin();
  }
}
