import 'package:flutter/material.dart';
import 'start_screen.dart';
import 'question_screen.dart';

class Quiz extends StatefulWidget {
  Quiz({super.key});

  /// Creates a new instance of [Quiz].
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  // memilih jawaban yang benar
  // it will be fix, and will be assignment
  final List<String> selectedAnswers = [];
  var activeScreen = 'start-screen';

  /// Initializes the state of the quiz application.

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  // it will executed when the user click the answer button.
  // this function will be called when the user click the answer button.
  // from question_screen widget

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
  }

  @override
  /// Builds the widget tree for the quiz application.
  /// It determines which screen to display based on the current state.
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);
    if (activeScreen == 'question-screen') {
      // screenWidget = const QuestionsScreen();
      screenWidget = QuestionsScreen(onSelectAnswer: chooseAnswer);
    }
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 61, 46, 86),
                Color.fromARGB(255, 101, 47, 186),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
