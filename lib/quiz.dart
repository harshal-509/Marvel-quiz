// ignore_for_file: prefer_const_constructors
import 'package:quiz/data.dart';
import 'package:flutter/material.dart';
import 'package:quiz/question.dart';
import 'package:quiz/answerbutton.dart';
import 'package:quiz/Endquiz.dart';

class Quiz extends StatefulWidget {
  const Quiz({Key? key}) : super(key: key);

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  

  var score = 0;
  var index = 0;
  var x = 0;
  int answerquestion(int value) {
    setState(() {
      index += 1;
      x = 0;
      if (value == 1) {
        score += 10;
      }
    });
    if (value == 1) {
      return 1;
    }
    return 0;
  }

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return Stack(
        children: [
          Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/vecteezy_background-gold_ts1220.jpg"), // <-- BACKGROUND IMAGE
              fit: BoxFit.cover,
            ),
          ),
          ),
          Scaffold(
              backgroundColor: Colors.transparent,
              appBar: AppBar(
                title: Center(
                  child: Text(
                    'Avengers, assemble!',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
                backgroundColor: Colors.transparent,
              ),
              body: index < Dataset().questions.length
                  ? SingleChildScrollView(
                      child: Column(
                      children: [
                        SizedBox(
                          height: 50,
                        ),
                        Question(questions: Dataset().questions, index: index),
                        SizedBox(
                          height: 30,
                        ),
                        Answerbutton(
                            answers: Dataset().answers,
                            index: index,
                            x: x,
                            answerquestion: answerquestion,
                            answerindex: 0),
                        Answerbutton(
                            answers: Dataset().answers,
                            index: index,
                            x: x,
                            answerquestion: answerquestion,
                            answerindex: 1),
                        Answerbutton(
                            answers: Dataset().answers,
                            index: index,
                            x: x,
                            answerquestion: answerquestion,
                            answerindex: 2),
                        Answerbutton(
                            answers: Dataset().answers,
                            index: index,
                            x: x,
                            answerquestion: answerquestion,
                            answerindex: 3)
                      ],
                    ))
                  : Endpage(score: score)),
        ],
      );
    });
  }
}
