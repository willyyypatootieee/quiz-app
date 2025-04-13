class QuizQuestions {
  const QuizQuestions(this.text, this.answers);

  void shuffle() {
    answers.shuffle();
  }

  final String text;
  final List<String> answers;

  List<String> getShuffledAnswers() {
    List.of(answers).shuffle();
  }
}
