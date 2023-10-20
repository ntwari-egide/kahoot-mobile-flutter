// answers class

import 'package:flutter/material.dart';

class AnswersWidget extends StatelessWidget {

 const AnswersWidget({super.key, required this.answersText, required this.onTap,});

  final String answersText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
            style: OutlinedButton.styleFrom(
              backgroundColor: const Color.fromARGB(51, 255, 255, 255),
              padding:
                  const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
            ),
            onPressed: () {},
            child: const Text("Developing Mobile Apps", style: TextStyle(color: Colors.white, fontSize: 19),),
          );
  }
}