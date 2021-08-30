import 'package:quizgame_app/constants.dart';
import 'package:quizgame_app/models/Question.dart';
List<Question> questions=[];
void readData(){
for(int i=0;i<data.length;i++){
  questions.add(new Question(data[i]['id'] , data[i]['answer'], data[i]['question'], data[i]['options']));
}
}

