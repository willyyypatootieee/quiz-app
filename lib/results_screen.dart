import 'package:flutter/material.dart';
import 'data/questions.dart';
import 'question_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.chosenAnswers});

  final List<String> chosenAnswers;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      //loop body
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAnswers[i],
      });
    }

    return summary;
  }

  @override
  Widget build(context) {
    final summaryData = getSummaryData();

    // dont plan to reassigned summaryData.

    final numTotalQuestion = 0; // summaryData.length;
    final numCorrectAnswers =
        summaryData.where(
          (data) {
            return data['user_answer'] == data['correct_answer'];
          },
        ).length; // summaryData.where((data) => data['user_answer'] == data['correct_answer']).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 30),
            Text(
              'You Answered $numTotalQuestion Out Of $numCorrectAnswers Questions Correctly!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,

                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            QuestionSummary(summaryData: getSummaryData()),
            const SizedBox(height: 30),
            TextButton(onPressed: () {}, child: Text('Restart Quiz')),
          ],
        ),
      ),
    );
  }
}
