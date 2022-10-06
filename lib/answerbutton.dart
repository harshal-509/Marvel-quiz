// ignore_for_file: non_constant_identifier_names, prefer_const_constructors

import 'package:flutter/material.dart';

class Answerbutton extends StatefulWidget {
  final List<dynamic> answers;
  final int index;
  final int answerindex;
  final int x;
  final Function answerquestion;
  const Answerbutton(
      {Key? key,
      required this.answers,
      required this.index,
      required this.x,
      required this.answerquestion,
      required this.answerindex})
      : super(key: key);
  @override
  State<Answerbutton> createState() => _AnswerbuttonState();
}

class _AnswerbuttonState extends State<Answerbutton> {
  int x = 0;
  @override
  initState() {
    x = widget.x;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    x = 0;
    return ElevatedButton(
      style:
          ButtonStyle(backgroundColor: MaterialStateColor.resolveWith((states) {
        if (x == 1) {
          return Colors.yellow;
        } else if (x == 2) {
          return Colors.red;
        }
        return Colors.white;
      }), textStyle: MaterialStateTextStyle.resolveWith((states) {
        return TextStyle(fontWeight: FontWeight.bold);
      }), side: MaterialStateBorderSide.resolveWith((states) {
        return BorderSide(width: 1, color: const Color(0xff7c94b6));
      })),
      onPressed: () {
        if (widget.answers[widget.index][widget.answerindex][1] == 1) {
          x = 1;
        } else {
          x = 2;
        }
        Future.delayed(Duration(milliseconds: 500),
            () => widget.answerquestion(widget.answers[widget.index][widget.answerindex][1]));
      },
      child: Text(
        widget.answers[widget.index][widget.answerindex][0].toString(),
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}
