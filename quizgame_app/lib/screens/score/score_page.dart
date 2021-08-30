import 'package:flutter/material.dart';
import 'package:quizgame_app/constants.dart';
import 'package:quizgame_app/screens/home/home_page.dart';


//score page
class ScorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 10),
                child: IconButton(onPressed: (){
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                }, icon: Icon(Icons.arrow_back_ios_rounded, color: WhiteColor, size: 50,)),
              )
            ],
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
                    "20/50",
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
