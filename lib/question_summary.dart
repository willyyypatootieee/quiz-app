import 'package:flutter/material.dart';

class QuestionSummary extends StatelessWidget {
  final List<Map<String, Object>> summaryData;
  const QuestionSummary({super.key, required this.summaryData});

  @override
  Widget build(context) {
    // Wrapping the scrollable content in padding for better spacing
    return SizedBox(
      height: 300, // Fixed height for the scrollable area
      child: SingleChildScrollView(
        child: Column(
          children:
              summaryData.map((data) {
                // Each item in the summaryData list is displayed as a row
                return Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 8.0,
                  ), // Add spacing between rows
                  child: Row(
                    crossAxisAlignment:
                        CrossAxisAlignment.start, // Align items at the top
                    children: [
                      // Display the question number inside a circular container
                      Container(
                        width: 30,
                        height: 30,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.blue, // Background color for the circle
                          shape: BoxShape.circle,
                        ),
                        child: Text(
                          ((data['question_index'] as int) + 1).toString(),
                          style: const TextStyle(
                            color: Colors.white, // White text inside the circle
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ), // Add spacing between the circle and the text
                      // Display the question details in a column
                      Expanded(
                        child: Column(
                          crossAxisAlignment:
                              CrossAxisAlignment
                                  .start, // Align text to the left
                          children: [
                            Text(
                              data['question'] as String,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight:
                                    FontWeight
                                        .bold, // Highlight the question text
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ), // Add spacing between texts
                            Text(
                              'Your Answer: ${data['user_answer'] as String}',
                              style: const TextStyle(
                                color:
                                    Colors.red, // Highlight user answer in red
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              'Correct Answer: ${data['correct_answer'] as String}',
                              style: const TextStyle(
                                color:
                                    Colors
                                        .green, // Highlight correct answer in green
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              }).toList(),
        ),
      ),
    );
  }
}
