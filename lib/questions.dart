// questionsWidget screen

import 'package:flutter/material.dart';
import 'package:quiz/answers.dart';

class QuestionsWidget extends StatefulWidget {
  const QuestionsWidget({super.key});

  @override
  State<QuestionsWidget> createState() {
    return _QuestionsWidgetState();
  }
}

class _QuestionsWidgetState extends State<QuestionsWidget> {
  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Why do we need Flutter ? ",
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 50,
          ),
          AnswersWidget(answersText: "To Develop Native Apps", onTap: (){}),
          AnswersWidget(answersText: "To Develop Mobile Apps", onTap: (){}),
          AnswersWidget(answersText: "To Develop Web Apps", onTap: (){}),
          AnswersWidget(answersText: "To Develop Cross Platform Apps", onTap: (){})
        ],
      ),
    );
  }
}
