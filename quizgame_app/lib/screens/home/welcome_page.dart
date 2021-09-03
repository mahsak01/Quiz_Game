import 'package:flutter/material.dart';
import 'package:quizgame_app/screens/quiz/quiz_page.dart';

import '../../constants.dart';
class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
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
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacer(flex: 2),
                  Text(
                    "Welcome ${user.name}",
                    style: Theme.of(context)
                        .textTheme
                        .headline3!
                        .copyWith(fontWeight: FontWeight.bold, color: WhiteColor),
                  ),
                  Spacer(),
                  SizedBox(
                    width: MediaQuery.of(context).size.width/1.5,
                    height: MediaQuery.of(context).size.height/4,
                    child: Image.asset("assets/quiz.png",fit: BoxFit.fill,),
                  ),
                  Spacer(),
                  Center(child: Text("Are you ready to quiz game?")),
                  Spacer(),
                  Spacer(),
                  Center(
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => QuizPage()),
                        );
                      },
                      child: Container(
                        height: 60,
                        width: MediaQuery.of(context).size.width / 2,
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(kDefaultPadding * 0.75),
                        // 15
                        decoration: BoxDecoration(
                          gradient: PrimaryGradient,
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                        ),
                        child: Text(
                          "Let's Go",
                          style: Theme.of(context)
                              .textTheme
                              .button!
                              .copyWith(color: Colors.black, fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                  Spacer(flex: 2), // it will take 2/6 spaces
                ],
              ),
            ))
      ]),
    );

  }
}
