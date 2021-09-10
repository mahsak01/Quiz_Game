import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizgame_web/constant.dart';
import 'package:quizgame_web/controller/Play.dart';
import 'package:quizgame_web/models/Question.dart';

import '../option.dart';
import 'dart:math' as Math;
class QuestionCardMax extends StatelessWidget {
  const QuestionCardMax(
    this.question, {
    Key? key,
  }) : super(key: key);

  final Question question;

  @override
  Widget build(BuildContext context) {
    Play _controller = Get.put(Play());
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width/1.6,
          height: MediaQuery.of(context).size.height / 1.3,
          color: Colors.transparent,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width/1.6,
          child :Image.asset("assets/quizpage/container_big.png",
            width: MediaQuery.of(context).size.width/1.6,
            height: MediaQuery.of(context).size.height/1.3,
            fit: BoxFit.fill,),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width/1.6,
          height: MediaQuery.of(context).size.height/1.3,
          child: Padding(
            padding: const EdgeInsets.only(right: 60 , left: 50 , top: 70 , bottom: 50),
            child: Center(
              child: NotificationListener<OverscrollIndicatorNotification>(
                onNotification: (overscroll) {
                  overscroll.disallowGlow();
                  return true;
                },
                child: ListView(
                  children: [
                    Text.rich(
                      TextSpan(
                        text: "Question ${_controller.questionNumber!+1}",
                        style: Theme.of(context)
                            .textTheme
                            .headline4!
                            .copyWith(color: grayColor),
                        children: [
                          TextSpan(
                            text: "/${_controller.questions.length}",
                            style: Theme.of(context)
                                .textTheme
                                .headline5!
                                .copyWith(color: grayColor),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      question.question,
                      style: Theme.of(context)
                          .textTheme
                          .headline6!
                          .copyWith(color: BlackColor),
                    ),
                    SizedBox(height: 20 / 2),
                    GridView.count(crossAxisCount: 2,
                        childAspectRatio: ((MediaQuery.of(context).size.width/3.5) / 150),
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                    children: List.generate(question.options.length,(index){
                        return Padding(
                          padding: const EdgeInsets.all(20),
                          child: Option(question.options[index], index,() => _controller.checkAns(question, index)),
                        );
                      }
                      )
                    )


                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
