import 'package:flutter/material.dart';

import '../../../constant.dart';

class ScoreWidgetsMin extends StatefulWidget {
  @override
  _ScoreWidgetsMinState createState() => _ScoreWidgetsMinState();
}

class _ScoreWidgetsMinState extends State<ScoreWidgetsMin> {
  var controller = TextEditingController();
  bool click = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: whiteColor,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: ListView(
            children: [
              SizedBox(
                height: 100,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Container(
                      color: Colors.white,
                      width: MediaQuery.of(context).size.width,
                      height: 100,
                    ),
                    Image.asset(
                      "assets/scorepage/top_background_small.png",
                      width: MediaQuery.of(context).size.width,
                      height: 100,
                      fit: BoxFit.fill,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Image.asset("assets/logo_small.png"),
                    )
                  ],
                ),
              ),
              Center(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Score",
                    style: TextStyle(color: greenColor, fontSize: 60),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width/2,
                    child: Center(
                        child: Image.asset("assets/scorepage/score_image.png")
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    "20/50",
                    style: TextStyle(color: grayColor, fontSize: 60),
                  ),

                ],
              ))
            ],
          )),
    );
  }
}
