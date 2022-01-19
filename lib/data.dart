import 'package:flutter/material.dart';

mixin data implements StatelessWidget {
   

final List<Map<String, Object>> _quistions = [
  {
    'questionText':'what\'s your favorite color?',
      'answers':['black','blue','red','green']
  },

  {
    'questionText':'what\'s your favorite animal?',
      'answers':['rabbit','elephant','lion','goat']
  },
    
  ];

  
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}
