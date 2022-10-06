// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:quiz/main.dart';

class Endpage extends StatefulWidget {
  final int score;
  const Endpage({Key? key, required this.score}) : super(key: key);

  @override
  State<Endpage> createState() => _EndpageState();
}

class _EndpageState extends State<Endpage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(20),
              child: Text(
                "CONGRATS!",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              )),
          Text('YOU JUST COMPLETED THE QUIZ',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15)),
          SizedBox(height: 10),
          Text("Score :    ${widget.score}",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15)),
          Image.network(
            "https://cdn.pixabay.com/photo/2017/01/13/01/22/ok-1976099_960_720.png",
          ),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.black54,
            ),
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => MyApp()),
                (Route<dynamic> route) => false,
              );
            },
            child: Text(
              "TRY AGAIN",
              style: TextStyle(fontSize: 20.0, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
