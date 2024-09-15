class QuizQuestion {
  QuizQuestion(this.text , this.answers ) ;

  final String text ;
  final List<String> answers;

  List<String> getshuffledAnswers() {
    
    final shufffledList = List.of(answers) ;

    shufffledList.shuffle();
    return shufffledList ;

  }
}