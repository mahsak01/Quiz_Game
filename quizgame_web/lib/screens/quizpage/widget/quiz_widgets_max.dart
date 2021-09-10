import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizgame_web/controller/Play.dart';
import 'package:quizgame_web/screens/quizpage/widget/maxpage/progressbar.dart';

import '../../../constant.dart';
import 'maxpage/question_card_max.dart';
class QuizWidgetsMax extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Play play = Get.put(Play());

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Image.asset("assets/logo_white.png"),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: FlatButton(onPressed: play.nextQuestion, child: Text("Skip",style: TextStyle(color: whiteColor,fontSize: 30),)),
          )
        ],
      ),
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Colors.white,
          ),
          Image.asset("assets/quizpage/background.png",
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          fit: BoxFit.fill,),
          SafeArea(
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Center(
                      child: PageView.builder(
                        // Block swipe to next qn
                        physics: NeverScrollableScrollPhysics(),
                        controller: play.pageController,
                        onPageChanged: play.updateTheQnNum,
                        itemCount: play.questions.length,
                        itemBuilder: (context, index) =>
                            QuestionCardMax(play.questions[index]),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: ProgressBar(),
                )

              ],
            ),
          )
        ],
      ),
    );
  }
}
