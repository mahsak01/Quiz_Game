import 'package:flutter/material.dart';

import '../../../constant.dart';
class HomeWidgetsMax extends StatefulWidget {
  @override
  _HomeWidgetsMaxState createState() => _HomeWidgetsMaxState();
}

class _HomeWidgetsMaxState extends State<HomeWidgetsMax> {
  var controller=TextEditingController();
  bool click=false;
  @override
  Widget build(BuildContext context) {
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
                              Text("Let's Play\nQuiz Game",style: TextStyle(color: greenColor , fontSize: 70),),
                              Text("  Enter your name below",style: TextStyle(color: grayColor , fontSize: 20),),
                              SizedBox(
                                height: 40,
                              ),
                              SizedBox(
                                width: 250,
                                child: TextField(
                                  controller: controller,
                                  decoration: InputDecoration(
                                      errorText: (controller.text.isEmpty && click)?"please enter your name":null,
                                      errorBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(20)),
                                        borderSide: BorderSide(color: RedColor),),
                                      filled: true,
                                      fillColor: grayLightColor,
                                      hintText: "Full Name",
                                      hintStyle: TextStyle(color: whiteColor, fontSize: 20),
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(20)),
                                          borderSide: BorderSide(color: grayColor)),
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(20)),
                                          borderSide: BorderSide(color: grayColor))),
                                ),
                              ),
                              SizedBox(
                                height: 40,
                              ),
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
                                    "Start",
                                    style: Theme.of(context)
                                        .textTheme
                                        .button!
                                        .copyWith(color: Colors.black, fontSize: 20),
                                  ),
                                ),
                              ),
                            ],
                          )
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width/2,
                      child: Center(
                       child: Image.asset("assets/homepage/home_image.png")
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
