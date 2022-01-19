import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/quiz.dart';
import 'package:flutter_quiz_app/results.dart';

import 'styles.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}
  Color b = Colors.black;
  Color w = Colors.white;

class _MyAppState extends State<MyApp> {
  
  bool switchres = false;
  int _quiestionIndex = 0;
  int _totalScore = 0;

  final List<Map<String, Object>> _quistions = [
    {
      'questionText': 'what\'s your favorite color?',
      'answers': [
        {'text': 'black', 'score': 10},
        {'text': 'blue', 'score': 20},
        {'text': 'red', 'score': 30},
        {'text': 'green', 'score': 40}
      ]
    },
    {
      'questionText': 'what\'s your favorite animal?',
      'answers': [
        {'text': 'rabbit', 'score': 10},
        {'text': 'elephant', 'score': 20},
        {'text': 'lion', 'score': 30},
        {'text': 'goat', 'score': 40}
      ]
    },
  ];
  void answersQuestion(int score) {
    print(_totalScore);
    _totalScore += score;

    setState(() {
      _quiestionIndex += 1;
    });
  }

  void rest() {
    setState(() {
      _quiestionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz_App",style: tbstyle,),
          actions: [
            Switch(
              activeColor: b,
              inactiveThumbColor:b,
              inactiveTrackColor: b,

                value: switchres,
                onChanged: (val) {
                  setState(() {
                    switchres = val;
                    if (switchres == true) {
                      w = Colors.black;
                      b = Colors.white;
                    }

                    if (switchres == false) {
                      b = Colors.black;
                      w = Colors.white;
                    }
                  
                  });
                
                })
          ],
        ),
        body: Container(
          color: w,
          width: double.infinity,
          child: _quiestionIndex < _quistions.length
              ? Quiz(_quistions, _quiestionIndex, answersQuestion)
              : Results(rest, _totalScore),
        ),
      ),
    );
  }
}
