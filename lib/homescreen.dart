// ignore_for_file: prefer_const_constructors, avoid_print, camel_case_types

import 'package:flutter/material.dart';
import 'package:quizapp/quiz.dart';
import 'package:quizapp/result.dart';
import 'package:quizapp/rules.dart';

class myHomePage extends StatefulWidget {
  const myHomePage({Key? key}) : super(key: key);

  @override
  _myHomePageState createState() => _myHomePageState();
}

class _myHomePageState extends State<myHomePage> {
  final _questions = const [
    {
      'questionText': 'What has been your greatest accomplishment?',
      'answers': [
        {
          'text': 'Overcome your fear',
          'score': 5,
        },
        {
          'text': 'Achieving your dream',
          'score': 7,
        },
        {
          'text': 'Getting rid of bad habits',
          'score': 6,
        },
        {
          'text': 'Gaining self Control',
          'score': 8,
        },
        {
          'text': 'All of the above',
          'score': 10,
        },
      ],
    },
    {
      'questionText': 'What has been your greatest failure?',
      'answers': [
        {
          'text': 'Not Able to face challenges',
          'score': 7,
        },
        {
          'text': 'unable to control mood swings',
          'score': 5,
        },
        {
          'text': 'lack in decision making ability',
          'score': 8,
        },
        {
          'text': 'unable to make plans of future',
          'score': 10,
        },
        {
          'text': 'getting lazy',
          'score': 6,
        },
      ],
    },
    {
      'questionText': 'Who knows you best?',
      'answers': [
        {
          'text': 'Parents',
          'score': 8,
        },
        {
          'text': 'Friends',
          'score': 7,
        },
        {
          'text': 'Myself',
          'score': 10,
        },
        {
          'text': 'collegues',
          'score': 6,
        },
        {
          'text': 'God',
          'score': 5,
        },
      ],
    },
    {
      'questionText': 'How would your enemy describe you?',
      'answers': [
        {
          'text': 'Agitated',
          'score': 5,
        },
        {
          'text': 'Mad',
          'score': 8,
        },
        {
          'text': 'Mean',
          'score': 7,
        },
        {
          'text': 'Competitive',
          'score': 10,
        },
        {
          'text': 'Selfish',
          'score': 6,
        },
      ],
    },
    {
      'questionText': 'What is your favorite hobby?',
      'answers': [
        {
          'text': 'Reading',
          'score': 8,
        },
        {
          'text': 'Listening to music',
          'score': 10,
        },
        {
          'text': 'Sleeping',
          'score': 5,
        },
        {
          'text': 'Binge Watching',
          'score': 6,
        },
        {
          'text': 'Playing games',
          'score': 7,
        },
      ],
    },
    {
      'questionText': 'Can you describe your relationship with your family?',
      'answers': [
        {
          'text': 'transparent',
          'score': 10,
        },
        {
          'text': 'pretty good',
          'score': 8,
        },
        {
          'text': 'neither transparent, nor private',
          'score': 7,
        },
        {
          'text': 'Private',
          'score': 6,
        },
        {
          'text': 'Doesn\'t get along',
          'score': 5,
        },
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalscore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalscore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('MORE');
    } else {
      print('end');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Personality Quiz',
            style: TextStyle(fontSize: 25),
          ),
          shadowColor: Colors.orange[200],
          backgroundColor: Colors.brown,
          actions: [
            IconButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const RulesList()));
              },
              icon: const Icon(Icons.rule),
            ),
          ],
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
              )
            : Result(_totalscore, _resetQuiz));
  }
}
