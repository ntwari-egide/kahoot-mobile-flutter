// questionsWidget screen

import 'package:flutter/material.dart';
import 'package:quiz/answers.dart';
import 'package:quiz/data/questions.dart';
import 'package:quiz/model/quiz_question.dart';

class QuestionsWidget extends StatefulWidget {
  const QuestionsWidget({super.key});

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
              style: const TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
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
