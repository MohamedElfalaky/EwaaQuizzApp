import 'package:flutter/material.dart';
import 'package:quiz_app_ewabootcamp/screens/splash_screen.dart';
import 'package:quiz_app_ewabootcamp/utils/global_variable.dart';

class ScoreScreen extends StatelessWidget {
  final score;
  final numberOfQuestions;
  const ScoreScreen(
      {super.key, required this.score, required this.numberOfQuestions});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
                text:
                    TextSpan(style: TextStyle(color: Colors.black), children: [
              const TextSpan(
                text: "Hello  ",
              ),
              TextSpan(
                  text: userNameController.text,
                  style: const TextStyle(
                      color: Colors.blue,
                      fontSize: 30,
                      fontWeight: FontWeight.bold)),
              const TextSpan(
                  text: "  you have completed the quiz and your score is"),
              TextSpan(
                  text: " $score/$numberOfQuestions",
                  style: TextStyle(fontSize: 25, color: Colors.red)),
            ])),
            const SizedBox(
              height: 20,
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => SplashScreen(),
                    ),
                  );
                },
                child: const Text("Play again"))
          ],
        ),
      ),
    );
  }
}
