import 'package:get/get.dart';

class Check_Test extends GetxController{
  var isSelect=false.obs;
  var correctIndex=-1.obs;
  var selectIndex=-1.obs;

  Check_Test(int correctSelect){
    this.correctIndex=correctSelect;
    this.isSelect.value=false;
  }

  void selectOption(int select){
    this.selectIndex=select;
    this.isSelect.value=true;
  }

}