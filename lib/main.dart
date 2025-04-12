import 'package:flutter/material.dart';
import 'styled_text.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.deepPurple,
          child: Center(
            child: Image.asset(
              'assets/images/quiz-logo.png',
              width: 200, // Try 150–250 depending on your design
            ),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    ),
  );
}
