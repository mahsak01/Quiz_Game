import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:quizgame_web/constant.dart';
import 'package:quizgame_web/controller/Play.dart';
class ProgressBar extends StatelessWidget {
  const ProgressBar({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 35,
      decoration: BoxDecoration(
        border: Border.all(color: grayColor, width: 3),
        borderRadius: BorderRadius.circular(50),
      ),
      child: GetBuilder<Play>(
        init: Play(),
        builder: (controller) {
          return Stack(
            children: [
              // LayoutBuilder provide us the available space for the conatiner
              // constraints.maxWidth needed for our animation
              LayoutBuilder(
                builder: (context, constraints) => Container(
                  // from 0 to 1 it takes 60s
                  width: constraints.maxWidth * controller.animation!.value,
                  decoration: BoxDecoration(
                    gradient: PrimaryGradient,
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ),
              Positioned.fill(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20 / 2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("${(controller.animation!.value * 60).round()} sec"),
                      Icon(Icons.access_time)
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}