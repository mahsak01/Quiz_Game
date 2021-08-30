import 'package:get/get.dart';

class Play extends GetxController{
  int numberOfQuestion=0.abs();
  int score=0.abs();

  void restart(){
    numberOfQuestion=0;
    score=0;
  }

  void setScore(bool result){
    numberOfQuestion++;
    if(result==true)
      score++;
  }

}