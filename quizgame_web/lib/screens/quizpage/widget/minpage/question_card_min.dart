import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizgame_web/constant.dart';
import 'package:quizgame_web/controller/Play.dart';
import 'package:quizgame_web/models/Question.dart';

import '../option.dart';

class QuestionCardMin extends StatelessWidget {
  const QuestionCardMin(
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
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 1.5,
          color: Colors.transparent,
        ),
        Image.asset(
          "assets/quizpage/container_small.png",
          width: MediaQuery.of(context).size.width,
          // height: MediaQuery.of(context).size.height / 1.3,
          fit: BoxFit.fill,
        ),
        Padding(
          padding: const EdgeInsets.all(40),
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
                ...List.generate(
                  question.options.length,
                  (index) => Option(
                    question.options[index],
                    index,
                    () => _controller.checkAns(question, index),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
