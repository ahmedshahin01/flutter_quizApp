import 'package:flutter/material.dart';

import 'main.dart';
import 'styles.dart';

class Answers extends StatelessWidget {
  final String answerText;
  final Function() x;
  Answers(this.answerText,this.x);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child:  Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        child: ElevatedButton(
              style: bbstyle,
                onPressed: x,
                child: Text(
                  answerText,
                  style: twstyle,
                )),
      ),
         
    );
  }
}
