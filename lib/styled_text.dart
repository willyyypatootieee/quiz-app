import 'package:flutter/material.dart';

// A custom widget that displays styled text with a predefined font size and color.
class StyledText extends StatelessWidget {
  const StyledText(this.text, {super.key});

  final String text;

  @override
  Widget build(context) {
    return Text(
      text,
      style: const TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 28),
    );
  }
}
