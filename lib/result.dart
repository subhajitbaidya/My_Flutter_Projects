// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  int resultScore;
  final VoidCallback resetHandler;

  Result(this.resultScore, this.resetHandler, {Key? key}) : super(key: key);

  String get resultPhrase {
    String resultText;
    if (resultScore == 60 && resultScore == 48) {
      resultText = 'You are perfect';
    } else {
      if (resultScore >= 36) {
        resultText = 'You need to work on few things';
      } else if (resultScore >= 25) {
        resultText = 'You need to improve';
      } else {
        resultText = 'You need help';
      }
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
            ),
            onPressed: resetHandler,
            child: const Text('Restart Quiz'),
          )

          /* FlatButton(
            child: Text(
              'Restart Quiz!',
            ),
            textColor: Colors.blue,
            onPressed: resetHandler,
          ),*/
        ],
      ),
    );
  }
}
