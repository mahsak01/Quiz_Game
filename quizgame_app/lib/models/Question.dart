// Question Models class
class Question {

  // id of question
  int id = 0;

  // index of answer in options
  int answer = 0;

  //text of question
  String question = "";

  // list of options
  List<String> options = [];

  //constructor
  Question(this.id, this.answer, this.question, this.options);
}


