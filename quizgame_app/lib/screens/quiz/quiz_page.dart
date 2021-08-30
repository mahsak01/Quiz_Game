
import 'package:flutter/material.dart';
import 'package:quizgame_app/models/Question.dart';
import 'package:quizgame_app/screens/quiz/widgets/question_card.dart';
import '../../constants.dart';
import 'widgets/progressbar.dart';

class QuizPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //back ground
          Stack(
            alignment: Alignment.topRight,
            children: [
              Stack(
                alignment: Alignment.topLeft,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    child: Image.asset(
                      "assets/background.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30, left: 10),
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_back_ios_rounded,
                          color: WhiteColor,
                          size: 40,
                        )),
                  )
                ],
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 40, right: 20),
                  child: Text(
                    "Skip",
                    style: TextStyle(color: WhiteColor, fontSize: 20),
                  ))
            ],
          ),
          SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Spacer(flex:3,),
                    Center(child: ProgressBar()),
                    Spacer(flex: 2,),
                    Text(
                      "  Question 1/5",
                      style: Theme.of(context)
                          .textTheme
                          .headline4!
                          .copyWith(fontWeight: FontWeight.bold, color: GrayColor),
                    ),
                    Divider(
                      color: GrayColor,
                      indent: 5,
                      endIndent: 5,
                    ),
                    Spacer(flex: 1,),
                    QuestionCard(Question(1,1,"Flutter is an open-source UI software development kit created by ______",['Apple', 'Google', 'Facebook', 'Microsoft'])),
                  Spacer()
                  ],

                ),
              ))
        ],
      ),
    );
  }
}
