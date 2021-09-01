import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizgame_app/controller/check_test.dart';
import 'package:quizgame_app/models/Question.dart';
import 'package:quizgame_app/screens/quiz/widgets/option.dart';
import '../../../constants.dart';

class QuestionCard extends StatelessWidget {
  Question? question;

  QuestionCard(this.question);

  @override
  Widget build(BuildContext context) {
    var check_test= Get.put(Check_Test(question!.answer));
    check_test.update_Check_Test(question!.answer);

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding,vertical: kDefaultPadding),
        child: Column(
          children: [
            Text(
              question!.question,
              style: Theme.of(context)
                  .textTheme
                  .headline6!
                  .copyWith(color: BlackColor),
            ),
            SizedBox(height: kDefaultPadding / 2),
            ...List.generate(question!.options.length, (index) => Option(question!.options[index], index,check_test))
          ],
        ),
      ),
    );
  }
}
