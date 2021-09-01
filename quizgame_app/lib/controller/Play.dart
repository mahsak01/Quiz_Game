import 'package:get/get.dart';
import 'package:quizgame_app/Data/read_data.dart';

class Play extends GetxController{
  int numberOfQuestion=0.abs();
  int score=0.abs();

  void restart(){
    numberOfQuestion=0;
    score=0;
  }

  void setScore(bool result){
    if(numberOfQuestion<questions.length-1)
    numberOfQuestion++;
    if(result==true)
      score++;
     update();
  }

}