import 'package:flutter/material.dart';

import 'styles.dart';

class Quistions extends StatelessWidget {
  final _quistionText;

  Quistions(this._quistionText);
  @override
  Widget build(BuildContext context) {
    return Container(
      
      margin: EdgeInsets.all(10),
      width: double.infinity,
      child: Text(
        _quistionText,
        style: twstyle,
        textAlign: TextAlign.center,
      ),
    );
  }
}
