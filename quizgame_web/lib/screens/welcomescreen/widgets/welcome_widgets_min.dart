import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizgame_web/controller/Play.dart';

import '../../../constant.dart';
class WelcomeWidgetsMin extends StatefulWidget {
  @override
  _WelcomeWidgetsMinState createState() => _WelcomeWidgetsMinState();
}

class _WelcomeWidgetsMinState extends State<WelcomeWidgetsMin> {
  Play _controller=Get.put(Play());
  var controller=TextEditingController();
  bool click=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: whiteColor,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ListView(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: SizedBox(
                height: 100,
                child:  Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Image.asset("assets/logo_small.png"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: SizedBox(
                height: MediaQuery.of(context).size.height-300,
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Spacer(flex: 2,),

                      Text("Welcome Mahsa",style: TextStyle(color: greenColor , fontSize: 50),),
                      Text("Are you ready to quiz game?",style: TextStyle(color: grayColor , fontSize: 20),),
                      Spacer(),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            click=true;

                          });
                          // if(!controller.text.isEmpty){
                          //   user.name=controller.text;
                          //   Navigator.push(
                          //     context,
                          //     MaterialPageRoute(builder: (context) => WelcomePage()),
                          //   );
                          // }

                        },
                        child: Container(
                          height: 60,
                          width: 150,
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(20 * 0.75),
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
                      Spacer(flex: 2,),

                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
                height:200,

                child: Image.asset("assets/welcomepage/bottom_background_small.png",
                height: 200,width: MediaQuery.of(context).size.width,fit: BoxFit.fill,)
            )

          ],
        ),
      ),
    );
  }
}
