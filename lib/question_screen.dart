import 'package:flutter/material.dart';

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
          const Text('Question 1'),
          const SizedBox(height: 30),
          FilledButton.tonal(onPressed: () {}, child: const Text('Answer 1')),
        ],
      ),
    );
  }
}
