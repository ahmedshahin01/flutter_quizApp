import 'package:flutter/material.dart';

import 'answers.dart';
import 'quiestions.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> q;
  final int qindex;
  final Function( int s) qanswer;
  Quiz(this.q, this.qindex, this.qanswer);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Quistions(q[qindex]['questionText'].toString()),

        ...(q[qindex]['answers'] as List<Map<String, Object>>)
            .map(( Answer) {
          return Answers(Answer['text'].toString(),
             ()=> qanswer(int.parse(Answer['score'].toString())));
        }).toList(),

//...(_quistions[_quiestionIndex]['answers'] as List<String>).map((x){
        //    return Answers(x,answersQuestion);}).toString(),

        //Answers("", answersQuestion),
        //Answers("answer2", answersQuestion),
        //Answers("answer3", answersQuestion),
      ],
    );
  }
}
