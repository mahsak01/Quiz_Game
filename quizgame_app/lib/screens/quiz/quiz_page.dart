
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizgame_app/Data/read_data.dart';
import 'package:quizgame_app/controller/Play.dart';
import 'package:quizgame_app/models/Question.dart';
import 'package:quizgame_app/screens/quiz/widgets/question_card.dart';
import '../../constants.dart';
import 'widgets/progressbar.dart';

class QuizPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Play play=Get.put(Play());
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
                        onPressed: () {
                          Navigator.pop(context);
                        },
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
                  child: GestureDetector(
                    onTap: (){
                      play.setScore(false);
                    },
                    child: Text(
                      "Skip",
                      style: TextStyle(color: WhiteColor, fontSize: 20),
                    ),
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
                      "  Question ${play.numberOfQuestion+1}/${data.length}",
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

                    GetBuilder<Play>(  builder: (_) => QuestionCard(questions[play.numberOfQuestion])),
                    Spacer()
                  ],

                ),
              ))
        ],
      ),
    );
  }
}
