import 'package:flutter/material.dart';

class QuestionSummary extends StatelessWidget {
  final List<Map<String, Object>> summaryData;
  const QuestionSummary({super.key, required this.summaryData});
  @override
  Widget build(context) {

    return Column(
      children:
          summaryData.map((data) {
            // why row is inside column???
            // because we want to show the question number and the question text in a row
            // and the question number and the question text in a column

            // this is a map function that takes each data item in the summaryData list and returns a widget for each item.

            return Row(
              children: [
                Text(((data['question_index'] as int) + 1).toString()),
                Expanded(
                  child: Column(
                    children: [
                      Text(data['question'] as String),
                      const SizedBox(height: 5),
                      Text(data['user_answer'] as String),
                      Text(data['correct_answer'] as String),
                    ],
                  ),
                ),
              ],
            ); // Add your widgets here to display the summary data);
          }).toList(),
    );
  }
}
