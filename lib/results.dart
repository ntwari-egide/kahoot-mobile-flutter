// result screen

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz/data/questions.dart';
import 'package:quiz/results-board.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen({super.key, required this.results});

  final List<String> results;
  var allQuestions = questions;

  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "You answered X out of Y questions correctly",
              style: GoogleFonts.sourceCodePro(
                fontSize: 20,
                color: const Color.fromARGB(206, 255, 255, 255),
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            ...allQuestions.map((question) {
              return ResultsBoard(currentQtn: question, results: results);
            }),
            const SizedBox(
              height: 30,
            ),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                padding: const EdgeInsets.all(15),
                foregroundColor: Colors.white,
                backgroundColor: const Color.fromARGB(20, 255, 255, 255),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.refresh_outlined),
                  SizedBox(
                    width: 20,
                  ),
                  Text("restart quiz")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
