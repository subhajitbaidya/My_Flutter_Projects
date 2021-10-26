// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class RulesList extends StatelessWidget {
  const RulesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text(
          'Rules of the Quiz-',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Text(
            '> All of the answers has some score',
            style: TextStyle(fontSize: 30),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            '> The person getting almost same scores in every answers will get a perfect card',
            style: TextStyle(fontSize: 30),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            '> Every question has a maximum score of 10 in one particuler answer',
            style: TextStyle(fontSize: 30),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
