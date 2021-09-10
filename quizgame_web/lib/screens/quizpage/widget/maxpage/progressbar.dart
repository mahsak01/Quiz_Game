import 'dart:math';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizgame_web/constant.dart';
import 'package:quizgame_web/controller/Play.dart';

class ProgressBar extends StatelessWidget {
  const ProgressBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery
          .of(context)
          .size
          .width / 3,
      child: Center(
          child: GetBuilder<Play>(
              init: Play(),
              builder: (controller) {
                 return Stack(
                  alignment: Alignment.center,
                  children: [
                    PieChart(

                        PieChartData(
                            centerSpaceRadius: 100,
                            startDegreeOffset: 270,
                            sections: [
                          PieChartSectionData(
                            color: greenColor,
                            value: (controller.animation!.value * 60).round(),
                            radius: 20,
                            titleStyle: TextStyle(
                              color: greenColor
                            )

                          ),
                          PieChartSectionData(
                            color: whiteColor,
                              radius: 20,
                               value: double.parse((60-(controller.animation!.value * 60).round()).toString()),
                              titleStyle: TextStyle(
                                  color: whiteColor
                              )

                          )
                        ])),
                    Text.rich(
                      TextSpan(
                        text: "${(controller.animation!.value * 60).round()}",
                        style: Theme
                            .of(context)
                            .textTheme
                            .headline4!
                            .copyWith(color: greenColor, fontSize: 80),
                        children: [
                          TextSpan(
                            text: "sec",
                            style: Theme
                                .of(context)
                                .textTheme
                                .headline5!
                                .copyWith(color: whiteColor),
                          ),
                        ],
                      ),
                    ),

                  ],
                );
              }
          )
      ),
    );
  }
}
