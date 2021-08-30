import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizgame_app/constants.dart';
import 'package:quizgame_app/controller/check_test.dart';

class Option extends StatelessWidget {
  String? text;
  int index;
  Check_Test check_test;

  Option(this.text, this.index, this.check_test);

  @override
  Widget build(BuildContext context) {

    return   Padding(
       padding: const EdgeInsets.only(top: 10),
       child: GestureDetector(
         onTap: (){
           check_test.selectOption(index);
         },
         child: Stack(
           alignment: Alignment.centerRight,
           children: [
             Stack(
               alignment: Alignment.centerLeft,
               children: [
                 Obx(()=>Container(
                   width: MediaQuery.of(context).size.width / 1,
                   height: 80,
                   decoration: BoxDecoration(
                       color: (check_test.isSelect == true &&
                           index ==check_test.correctIndex)
                           ? GreenColorLight
                           : (check_test.selectIndex == index && check_test.isSelect == true)
                           ? RedColorLight
                           : WhiteColor,
                       borderRadius: BorderRadius.all(Radius.circular(20)),
                       border: Border.all(
                         color: (check_test.isSelect == true &&
                             index ==check_test.correctIndex)
                             ? GreenColor
                             : (check_test.selectIndex == index && check_test.isSelect == true)
                             ? RedColor
                             : GrayColor,
                       )),
                 ),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(left: 10),
                   child:   Obx(()=>Text(
                     "${index + 1}. $text",
                     style: TextStyle(
                       fontSize: 20,
                       color: (check_test.isSelect == true &&
                           index ==check_test.correctIndex)
                           ? GreenColor
                           : (check_test.selectIndex == index && check_test.isSelect == true)
                           ? RedColor
                           : GrayColor,
                     ),
                   ),
                   )
                 ),
               ],
             ),
    Obx(()=>IconButton(
               onPressed: () {

               },
               icon: Icon(
                 (check_test.isSelect == true &&
                     index ==check_test.correctIndex)
                     ? Icons.check_circle
                     : (check_test.selectIndex == index && check_test.isSelect == true)
                     ? Icons.cancel
                     : Icons.circle_outlined,
               ),
               iconSize: 35,
               color: (check_test.isSelect == true &&
                   index ==check_test.correctIndex)
                   ? GreenColor
                   : (check_test.selectIndex == index && check_test.isSelect == true)
                   ? RedColor
                   : GrayColor,
             ))
           ],
         ),
       ),
     );
  }

}
