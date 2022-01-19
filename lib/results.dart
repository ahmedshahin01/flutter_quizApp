 
import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/styles.dart';

class Results extends StatelessWidget {
  Function() rest;
  int resalut;
  Results(this.rest,this.resalut);

  String? get resultPhrase{
    String resultText;
    if (resalut>=60) {
      resultText="good";
      
    }else if (resalut>=30) {
      resultText="notbad";

    }else{
      resultText="bad";
    }
return resultText;

  }
  
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(resalut.toString(),style: tbstyle,)
          ,Text(resultPhrase.toString(),
            style: tbstyle,
          ),
          ElevatedButton(
              style: bbstyle,
              onPressed: rest,
              child: Text(
                "return to start",
                style: twstyle,
              )),
        ],
      ),
    );
  }
}
