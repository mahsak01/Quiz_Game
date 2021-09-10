import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizgame_web/controller/Play.dart';

import '../../../constant.dart';

class Option extends StatelessWidget {
  const Option( this.text,
       this.index,
       this.press,{
        Key? key,
  }) : super(key: key);
  final String text;
  final int index;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Play>(
        init: Play(),
        builder: (qnController) {
          Color getTheRightColor() {
            if (qnController.isAnswered) {
              if (index == qnController.correctAns) {
                return GreenColor;
              } else if (index == qnController.selectedAns &&
                  qnController.selectedAns != qnController.correctAns) {
                return RedColor;
              }
            }
            return grayColor;
          }
          Color getTheRightLightColor() {
            if (qnController.isAnswered) {
              if (index == qnController.correctAns) {
                return GreenColorLight;
              } else if (index == qnController.selectedAns &&
                  qnController.selectedAns != qnController.correctAns) {
                return RedColorLight;
              }
            }
            return whiteColor;
          }
          IconData getTheRightIcon() {
            return getTheRightColor() == RedColor ? Icons.close : Icons.done;
          }

          return InkWell(
            onTap: press,
            child: Container(
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                border: Border.all(color: getTheRightColor()),
                borderRadius: BorderRadius.circular(15),
                color: getTheRightLightColor()

            ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "${index + 1}. $text",
                    style: TextStyle(color: getTheRightColor(), fontSize: 16),
                  ),
                  Container(
                    height: 26,
                    width: 26,
                    decoration: BoxDecoration(
                      color: getTheRightColor() == grayColor
                          ? Colors.transparent
                          : getTheRightColor(),
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: getTheRightColor()),
                    ),
                    child: getTheRightColor() == grayColor
                        ? null
                        : Icon(getTheRightIcon(), size: 16, color: whiteColor,),
                  )
                ],
              ),
            ),
          );
        });
  }
}