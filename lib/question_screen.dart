import 'package:flutter/material.dart';
import 'answer_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    // Text untuk menampilkan di dalam widget.
    return SizedBox(
      width: double.infinity,

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Question 1',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 30),
          AnswerButton(answerText: 'answerText', onTap: () {}),
          AnswerButton(answerText: 'answerText', onTap: () {}),
          AnswerButton(answerText: 'answerText', onTap: () {}),
          AnswerButton(answerText: 'answerText', onTap: () {}),
        ],
      ),
    );
  }
}
