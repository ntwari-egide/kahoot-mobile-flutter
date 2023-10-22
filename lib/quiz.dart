// class for the quiz

import 'package:flutter/material.dart';
import 'package:quiz/questions.dart';
import 'package:quiz/start_screen.dart';

class QuizWidget extends StatefulWidget {
  const QuizWidget({super.key});

  @override
  State<QuizWidget> createState() {
    return _QuizWidgetState();
  }
}

class _QuizWidgetState extends State<QuizWidget> {
  // we need to be able to switch from one screen to another
  var activeScreen = 'start-screen';

  var selectedAnswers = [];

  // executes on first time, as useEffect react
  // @override
  // void initState() {
  //   activeScreen = StartScreen(switchScreen);
  //   super.initState();
  // }

  void onSelectAnswer (String answer) {
    selectedAnswers.add(answer);
  }

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  @override
  Widget build(context) {

  Widget screenWidget = StartScreen(switchScreen);

  // using if conditions
  if ( activeScreen == 'question-screen') screenWidget = QuestionsWidget(onSelectAnswer: onSelectAnswer);

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 30, 5, 158),
                Color.fromARGB(255, 31, 73, 209),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
