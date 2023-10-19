import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(context) {
    return Center(
      // Column works when you want to grid-col, Row for grid-row
      child: Column(
        children: [
          Image.asset('assets/images/quiz-logo.png'),
          const Text("Start Screen"),
        ],
      ),
    );
  }
}
