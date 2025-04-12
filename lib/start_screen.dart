import 'package:flutter/material.dart';

/// A screen that serves as the starting point of the application.
/// It is currently empty and does not contain any widgets or functionality.

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  /// Creates a new instance of [StartScreen].
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: AssetImage('assets/images/quiz-logo.png'),
            width: 200,
            height: 200,
          ),
          const SizedBox(height: 80),
          Text(
            textAlign: TextAlign.center,
            'Flutter: Quiz App',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
          const SizedBox(height: 20),
          FilledButton.icon(
            onPressed: () {},
            style: FilledButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 255, 255, 255),
              foregroundColor: const Color.fromARGB(255, 0, 0, 0),
            ),
            // onPressed: () => Navigator.of(context).pushNamed('/questions'),
            icon: const Icon(Icons.stars),
            label: const Text(
              'Start Quiz!',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
