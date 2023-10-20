// questionsWidget screen

import 'package:flutter/material.dart';

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
          
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              backgroundColor: const Color.fromARGB(51, 255, 255, 255),
              padding:
                  const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
            ),
            onPressed: () {},
            child: const Text("Developing Mobile Apps", style: TextStyle(color: Colors.white, fontSize: 19),),
          ),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              backgroundColor: const Color.fromARGB(51, 255, 255, 255),
              padding:
                  const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
            ),
            onPressed: () {},
            child: const Text("Developing Mobile Apps", style: TextStyle(color: Colors.white, fontSize: 19),),
          ),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              backgroundColor: const Color.fromARGB(51, 255, 255, 255),
              padding:
                  const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
            ),
            onPressed: () {},
            child: const Text("Developing Mobile Apps", style: TextStyle(color: Colors.white, fontSize: 19),),
          ),
        ],
      ),
    );
  }
}
