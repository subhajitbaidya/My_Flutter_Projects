// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;

  const Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: Theme.of(context).textTheme.headline4!.fontSize! * 1.1 + 30.0,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.orange, // background
          onPrimary: Colors.white, // foreground
          padding: EdgeInsets.all(10),
          fixedSize: Size(50, 30),
        ),
        onPressed: selectHandler,
        child: Text(
          answerText,
          style: TextStyle(color: Colors.black87, fontSize: 20),
        ),

        /*RaisedButton(
        color: Colors.orangeAccent,
        textColor: Colors.white,
        child: Text(answerText),
        onPressed: selectHandler,*/
      ),
    );
  }
}
