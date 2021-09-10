import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizgame_web/controller/Play.dart';

import '../../../constant.dart';
class ScoreWidgetsMax extends StatefulWidget {
  @override
  _ScoreWidgetsMaxState createState() => _ScoreWidgetsMaxState();
}

class _ScoreWidgetsMaxState extends State<ScoreWidgetsMax> {
  var controller=TextEditingController();
  bool click=false;
  @override
  Widget build(BuildContext context) {
    Play _qnController = Get.put(Play());
    return Scaffold(
      body:  Container(
          color: whiteColor,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child:ListView(
            children: [
              SizedBox(
                height: 100,

                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Stack(
                        alignment: Alignment.centerLeft,
                        children: [
                          Container(
                            color: Colors.white,
                            width: MediaQuery.of(context).size.width,
                            height: 100,
                          ),
                          Image.asset("assets/logo_small.png")
                        ],
                      ),
                      Image.asset("assets/homepage/top_background_big.png")

                    ],
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height-100,
                child: Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width/2,
                      child: Center(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Score",style: TextStyle(color: greenColor , fontSize: 70),),
                              SizedBox(
                                height: 60,
                              ),
                              Text("${_qnController.numOfCorrectAns.obs * 10}/${_qnController.questions.length * 10}",style: TextStyle(color: grayColor , fontSize: 70),),

                            ],
                          )
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width/2,
                      child: Center(
                       child: Image.asset("assets/scorepage/score_image.png")
                      ),
                    )
                  ],
                ),
              )
            ],
          )
      ),
    );
  }
}
