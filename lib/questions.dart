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

  QuizQuestion question = questions[0];

  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        
        children: [
          Text( 
          question.question,
            style: const TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 50,
          ),
          ...question.answers.map((answers) {
            return AnswersWidget(answersText: answers, onTap: (){});
          }),
        ],
      ),
    );
  }
}
