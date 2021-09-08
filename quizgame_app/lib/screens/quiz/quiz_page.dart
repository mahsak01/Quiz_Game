import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizgame_app/controller/Play.dart';
import 'package:quizgame_app/models/Question.dart';
import 'package:quizgame_app/screens/quiz/widgets/question_card.dart';
import '../../constants.dart';
import 'widgets/progressbar.dart';

class QuizPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Play play = Get.put(Play());
    return Scaffold(
      
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          // Flutter show the back button automatically
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            FlatButton(onPressed: play.nextQuestion, child: Text("Skip")),
          ],
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios_rounded,
                color: WhiteColor,
                size: 30,
              )),
        ),
        body: Stack(
          children: [
            //back ground
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Image.asset(
                "assets/background.png",
                fit: BoxFit.fill,
              ),
            ),
            SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    child: ProgressBar(),
                  ),
                  SizedBox(height: kDefaultPadding),
                  GetBuilder<Play>(
                    builder: (_) => Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: kDefaultPadding),
                      child: Text.rich(
                        TextSpan(
                          text: "Question ${play.questionNumber}",
                          style: Theme.of(context)
                              .textTheme
                              .headline4!
                              .copyWith(color: GrayColor),
                          children: [
                            TextSpan(
                              text: "/${play.questions.length}",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline5!
                                  .copyWith(color: GrayColor),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Divider(indent: 20,endIndent: 20,color: GrayColor,),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: PageView.builder(
                        // Block swipe to next qn
                        physics: NeverScrollableScrollPhysics(),
                        controller: play.pageController,
                        onPageChanged: play.updateTheQnNum,
                        itemCount: play.questions.length,
                        itemBuilder: (context, index) =>
                            QuestionCard(play.questions[index]),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
