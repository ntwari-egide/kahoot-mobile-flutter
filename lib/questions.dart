// questionsWidget screen

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz/answers.dart';
import 'package:quiz/data/questions.dart';
import 'package:quiz/model/quiz_question.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsWidget extends StatefulWidget {
  const QuestionsWidget({
    super.key,
    required this.onSelectAnswer,
  });

  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionsWidget> createState() {
    return _QuestionsWidgetState();
  }
}

class _QuestionsWidgetState extends State<QuestionsWidget> {
  //current question state
  var currentQuestionIndex = 0;

  void onTapNext() {
    print('writing ....');
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(context) {
    final question = questions[currentQuestionIndex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              question.question,
              style: GoogleFonts.sourceCodePro(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 244, 244, 255),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 50,
            ),
            ...question.getShuffledAnswers().map((answers) {
              return Container(
                margin: const EdgeInsets.only(top: 10),
                child: AnswersWidget(answersText: answers, onTap: onTapNext),
              );
            }),
          ],
        ),
      ),
    );
  }
}
