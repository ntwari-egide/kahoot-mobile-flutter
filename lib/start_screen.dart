import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz,{super.key});


  final void Function(String newScreen) startQuiz;

  void handleStartQuiz () {
    startQuiz('question-screen');
  }

  @override
  Widget build(context) {
    return Center(
      // Column works when you want to grid-col, Row for grid-row
      child: Column(
        // this will make the h- auto
        mainAxisSize: MainAxisSize.min,
        children: [
          Opacity(
            opacity: 0.7,
            child: Image.asset(
              'assets/images/quiz-logo.png',
              width: 300,
            ),
          ),
          const SizedBox(
            height: 80,
          ), // works as grid diver
          const Text(
            "Pass The Quiz To Win Price!",
            style: TextStyle(
                color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 80,
          ),
          OutlinedButton.icon(
            onPressed: handleStartQuiz,
            style: OutlinedButton.styleFrom(
              backgroundColor: const Color.fromARGB(31, 255, 255, 255),
              padding: const EdgeInsets.only(
                  left: 30, right: 30, top: 15, bottom: 15),
            ),
            icon: const Icon(Icons.arrow_right_sharp),
            label: const Text(
              'Start Quiz!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          )
        ],
      ),
    );
  }
}
