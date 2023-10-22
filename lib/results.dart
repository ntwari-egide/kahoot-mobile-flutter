// result screen

import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: const Column(
          children: [
            Text("You answered X out of Y questions correctly"),
          ],
        ),
      ),
    );
  }
}
