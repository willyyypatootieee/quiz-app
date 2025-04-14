import 'package:flutter/material.dart';
import 'start_screen.dart';
import 'question_screen.dart';
import 'data/questions.dart';
import 'results_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  /// Creates a new instance of [Quiz].
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  // List untuk menyimpan jawaban yang dipilih user
  List<String> selectedAnswers = [];

  // Menentukan screen yang aktif: start atau question
  var activeScreen = 'start-screen';

  /// Fungsi untuk mengganti screen ke question screen
  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  /// Fungsi ini dipanggil saat user memilih jawaban
  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    // Jika jumlah jawaban yang dipilih sama dengan jumlah soal, kembali ke start screen
    if (selectedAnswers.length == questions.length) {
      setState(() {
        // Di arahkan ke results screen untuk hasil.
        activeScreen = 'results-screen';
      });
    }
  }

  @override
  /// Membangun UI aplikasi berdasarkan screen yang aktif
  Widget build(context) {
    // Default screen adalah StartScreen
    Widget screenWidget = StartScreen(switchScreen);

    // Jika activeScreen adalah question-screen, ganti widgetnya
    if (activeScreen == 'question-screen') {
      screenWidget = QuestionsScreen(
        onSelectAnswer: chooseAnswer,
        onRestartQuiz: () {
          setState(() {
            selectedAnswers = [];
            activeScreen = 'start-screen';
          });
        },
      );
    }

    if (activeScreen == 'results-screen') {
      screenWidget = ResultsScreen(chosenAnswers: selectedAnswers);
    }

    // Return tampilan dengan background gradient dan screen yang sesuai
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
