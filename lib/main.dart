// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:quiz/quiz.dart';
import 'package:quiz/sizes_helpers.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Builder(builder: (context) {
        return Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      "assets/images/vecteezy_background-gold_ts1220.jpg"), // <-- BACKGROUND IMAGE
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Scaffold(
              backgroundColor:
                  Colors.transparent, // <-- SCAFFOLD WITH TRANSPARENT BG
              appBar: AppBar(
                title: Center(
                  child: Text(
                    'Avengers, assemble!',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
                backgroundColor: Colors.transparent,
              ),
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      width: displayWidth(context),
                      padding: EdgeInsets.all(20),
                      alignment: Alignment.center,
                      child: Text(
                        'Quiz',
                        style: TextStyle(
                            fontSize: displayWidth(context) * .2,
                            color: Colors.white,
                            fontFamily: 'Random'),
                      ),
                    ),
                    Image.network(
                      'https://cdn.pixabay.com/photo/2019/06/17/22/21/flash-4281077_960_720.png',
                      fit: BoxFit.fitWidth,
                      height: 230,
                    ),
                    Container(
                      width: displayWidth(context),
                      padding: EdgeInsets.all(20),
                      alignment: Alignment.center,
                      child: Text(
                        '“Show them who we are.”',
                        style: TextStyle(
                            fontSize: displayWidth(context) * .08,
                            color: Colors.white,
                            fontFamily: 'Random'),
                      ),
                    ),
                    Container(
                      width: displayWidth(context),
                      padding: EdgeInsets.all(20),
                      alignment: Alignment.center,
                      child: Text(
                        'Take this fun quiz to find out how great marvel-fan you are',
                        style: TextStyle(
                            fontSize: displayWidth(context) * .07,
                            color: Colors.white,
                            fontFamily: 'Random'),
                      ),
                    ),
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.black54,
                      ),
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (context) => Quiz()),
                          (Route<dynamic> route) => false,
                        );
                      },
                      child: Text(
                        "START",
                        style: TextStyle(fontSize: 20.0, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      }),
    );
  }
}