import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 30),
            const Text(
              'You Answered X Out Of Y Questions Correctly!',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 30,

                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const Text('List Of The Correct Answer....  '),
            const SizedBox(height: 30),
            TextButton(onPressed: () {}, child: Text('Restart Quiz')),
          ],
        ),
      ),
    );
  }
}
