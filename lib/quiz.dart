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
  var activeScreen = 'start-screen';

  /// Initializes the state of the quiz application.

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  @override
  /// Builds the widget tree for the quiz application.
  /// It determines which screen to display based on the current state.
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);
    if (activeScreen == 'question-screen') {
      // screenWidget = const QuestionsScreen();
      screenWidget = const QuestionsScreen();
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
