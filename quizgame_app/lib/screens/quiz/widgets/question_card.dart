import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizgame_app/controller/Play.dart';
import 'package:quizgame_app/models/Question.dart';
import 'package:quizgame_app/screens/quiz/widgets/option.dart';
import '../../../constants.dart';

class QuestionCard extends StatelessWidget {
  const QuestionCard(this.question, {
    Key? key,
  }) : super(key: key);

  final Question question;
  @override
  Widget build(BuildContext context) {
    Play _controller = Get.put(Play());
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      padding: EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        children: [
          Text(
            question.question,
            style: Theme.of(context)
                .textTheme
                .headline6!
                .copyWith(color: BlackColor),
          ),
          SizedBox(height: kDefaultPadding / 2),
          ...List.generate(
            question.options.length,
                (index) => Option(question.options[index], index,
                      () => _controller.checkAns(question, index),
            ),
          ),
        ],
      ),
    );
  }
}