// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Question extends StatefulWidget {
  final List questions;
  final int index;
  const Question({Key? key, required this.questions, required this.index})
      : super(key: key);
  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xff7c94b6),
        border: Border.all(
          width: 4,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        widget.questions[widget.index],
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
      ),
    );
  }
}
