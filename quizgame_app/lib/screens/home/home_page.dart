import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizgame_app/constants.dart';
import 'package:quizgame_app/controller/Play.dart';
import 'package:quizgame_app/screens/home/welcome_page.dart';
import 'package:quizgame_app/screens/quiz/quiz_page.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController controller = TextEditingController();
  bool click=false;

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
                    "Let's Play Quiz Game",
                    style: Theme.of(context)
                        .textTheme
                        .headline4!
                        .copyWith(fontWeight: FontWeight.bold, color: WhiteColor),
                  ),
                  Text("Enter your name below"),
                  Spacer(),
                  TextField(
                    controller: controller,
                    decoration: InputDecoration(
                      errorText: (controller.text.isEmpty && click)?"please enter your name":null,
                        errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide(color: RedColor),),
                        filled: true,
                        fillColor: SecondColor,
                        hintText: "Full Name",
                        hintStyle: TextStyle(color: GrayColor, fontSize: 20),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide(color: GrayColor)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide(color: GrayColor))),
                  ),
                  Spacer(),
                  Center(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          click=true;

                        });
                        if(!controller.text.isEmpty){
                          user.name=controller.text;
                        Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => WelcomePage()),
                        );
                        }

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
                          "Start",
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
