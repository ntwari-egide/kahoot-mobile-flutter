// result screen

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

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
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text("Content"),
            OutlinedButton(onPressed: (){}, 
            style: OutlinedButton.styleFrom(
              padding: const EdgeInsets.all(15),
              foregroundColor: Colors.white,
              backgroundColor: const Color.fromARGB(20, 255, 255, 255),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               Icon(Icons.refresh_outlined),
              SizedBox(width: 20,),
              Text("restart quiz")
            ],), )
          ],
        ),
      ),
    );
  }
}
