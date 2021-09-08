import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizgame_web/constant.dart';
import 'package:quizgame_web/controller/Play.dart';
class WelcomeWidgetsMax extends StatefulWidget {
  @override
  _WelcomeWidgetsMaxState createState() => _WelcomeWidgetsMaxState();
}

class _WelcomeWidgetsMaxState extends State<WelcomeWidgetsMax> {
  Play _controller=Get.put(Play());
  var controller=TextEditingController();
  bool click=false;
  @override
  Widget build(BuildContext context) {
      return Scaffold(
       body: Stack(
         children: [
           Stack(
             alignment: Alignment.bottomRight,
             children: [
               Container(
                 width: MediaQuery.of(context).size.width,
                 height: MediaQuery.of(context).size.height,
                 color: whiteColor,

               ),
               Image.asset("assets/welcomepage/bottom_background_big.png")
             ],
           ),
           SizedBox(
             width: MediaQuery.of(context).size.width/2,
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 SizedBox(
                   height: 100,
                   child: Image.asset("assets/logo_small.png"),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(left: 30),
                   child: SizedBox(
                     height: MediaQuery.of(context).size.height-100,
                     child: Center(
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Spacer(flex: 2,),

                           Text("Welcome Mahsa",style: TextStyle(color: greenColor , fontSize: 70),),
                           Text("Are you ready to quiz game?",style: TextStyle(color: grayColor , fontSize: 30),),
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
                 )

               ],
             ),
           )
         ],
       ),
      );
  }
}
