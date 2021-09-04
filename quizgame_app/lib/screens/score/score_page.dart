import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizgame_app/constants.dart';
import 'package:quizgame_app/controller/Play.dart';
import 'package:quizgame_app/screens/home/home_page.dart';


//score page
class ScorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Play _qnController = Get.put(Play());
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          //back ground
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
             ]
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Spacer(flex: 2,),
                  Text(
                    "Score",
                    style: Theme.of(context)
                        .textTheme
                        .headline3!
                        .copyWith(color: WhiteColor),
                  ),
                  Spacer(),
                  SizedBox(
                    width: MediaQuery.of(context).size.width/1.5,
                    height: MediaQuery.of(context).size.height/4,
                    child: Image.asset("assets/winner.png",fit: BoxFit.fill,),
                  ),
                  Spacer(),
                  Text(
                    "${_qnController.numOfCorrectAns.obs * 10}/${_qnController.questions.length * 10}",
                    style: Theme.of(context)
                        .textTheme
                        .headline3!
                        .copyWith(color: GrayColor),
                  ),
                  Spacer(flex: 2,),

                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
