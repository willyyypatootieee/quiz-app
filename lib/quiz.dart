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
  Widget?
  activeScreen; // Iniasialisasi Apakah Widget aktif termaasuk null atau bukan.
  // ? menanyakan dart apakah variabel tersebut null atau bukan.
  // Jika null maka akan menampilkan widget yang lain.

  /// A function that switches the active screen to the question screen.
  @override
  void initState() {
    // TODO: implement initState
    super.initState(); // Harus dilakukan sebelum melakukan activescreen.
    activeScreen = StartScreen(switchScreen);
  }

  void switchScreen() {
    setState(() {
      activeScreen = const QuestionsScreen();
    });
  }

  Widget build(context) {
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
          child: activeScreen,
        ),
      ),
    );
  }
}
