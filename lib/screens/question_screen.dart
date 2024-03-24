import 'package:flutter/material.dart';
import 'package:quiz_app_ewabootcamp/screens/score_screen.dart';

class QuestionScreen extends StatefulWidget {
  final List? questionsAndAnswersList;

  QuestionScreen({super.key, this.questionsAndAnswersList});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  int _currentIndex = 0;
  int _currentScore = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(top: 30, bottom: 20, right: 12, left: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Text(
                    "Question Number: ",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Text(
                      "${_currentIndex + 1}/  ${widget.questionsAndAnswersList!.length}  ",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.red)),
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Text(widget.questionsAndAnswersList![_currentIndex]["ques"],
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  )),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),

// this is answers list

              for (int i = 0;
                  i <
                      widget.questionsAndAnswersList![_currentIndex]["answers"]
                          .length;
                  i++)
                ElevatedButton(
                    onPressed: () {
                      _currentScore = _currentScore +
                          (widget.questionsAndAnswersList![_currentIndex]
                              ["answers"][i]["score"]) as int;

                      if ((_currentIndex + 1) <
                          widget.questionsAndAnswersList!.length) {
                        setState(() {
                          // _currentIndex = _currentIndex + 1;

                          print("current score is ${_currentScore}");

                          _currentIndex++;
                        });
                      } else {
                        Navigator.push(
                          context,
                          MaterialPageRoute<void>(
                            builder: (BuildContext context) => ScoreScreen(
                                score: _currentScore,
                                numberOfQuestions:
                                    widget.questionsAndAnswersList!.length),
                          ),
                        );
                      }
                    },
                    child: Text(widget.questionsAndAnswersList![_currentIndex]
                        ["answers"][i]["ans"])),
            ],
          ),
        ),
      ),
    );
  }
}
