// results board class

import 'package:flutter/material.dart';
import 'package:quiz/data/questions.dart';
import 'package:quiz/model/quiz_question.dart';

class ResultsBoard extends StatelessWidget {
  const ResultsBoard(
      {super.key, required this.currentQtn, required this.results});

  final List<String> results;
  final QuizQuestion currentQtn;

  final List<QuizQuestion> allQuestions = questions;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: results[allQuestions.indexOf(currentQtn)] == currentQtn.answers[0] ? Colors.green : Colors.red ,
            child: Text((allQuestions.indexOf(currentQtn) + 1).toString()),
          ),
          const SizedBox(
            width: 20,
          ),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  currentQtn.question,
                  style: const TextStyle(fontSize: 15, color: Colors.white,),
                  textAlign: TextAlign.start,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  currentQtn.answers[0],
                  style: const TextStyle(
                      fontSize: 15, color: Color.fromARGB(255, 255, 140, 238)),
                  textAlign: TextAlign.start,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  results[allQuestions.indexOf(currentQtn)],
                  style: const TextStyle(color: Color.fromARGB(255, 9, 226, 154)),
                  textAlign: TextAlign.left,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
