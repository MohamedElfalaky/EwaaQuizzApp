import 'package:flutter/material.dart';
import 'package:quiz_app_ewabootcamp/Data/app_question_and_answers.dart';

import 'package:quiz_app_ewabootcamp/screens/question_screen.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          categoryContainer("Programming quiz", Colors.red, context,
              programmingQuizQuestionsAndAnswers),
          categoryContainer("History Quiz", Colors.blue, context,
              historyQuizQuestionsAndAnswers),
          categoryContainer("Sport quiz", Colors.green, context,
              sportsQuizQuestionsAndAnswers),
        ],
      ),
    );
  }

  /// Reusble component-widget / shared component-widget
  Widget categoryContainer(
      String quizName, Color quizColor, context, List qList) {
    return Expanded(
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute<void>(
              builder: (BuildContext context) => QuestionScreen(
                questionsAndAnswersList: qList,
              ),
            ),
          );
        },
        child: Container(
          child: Center(
              child: Text(
            quizName,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          )),
          color: quizColor,
        ),
      ),
    );
  }
}
