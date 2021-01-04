import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': "What's your favorite color?",
      'answer': [
        {'text': 'Red', 'score': 1},
        {'text': 'Yellow', 'score': 3},
        {'text': 'Black', 'score': 5},
        {'text': 'White', 'score': 10},
      ]
    },
    {
      'questionText': "What's your favorite animal?",
      'answer': [
        {'text': 'Lion', 'score': 10},
        {'text': 'Cat', 'score': 5},
        {'text': 'Fish', 'score': 2},
        {'text': 'Puma', 'score': 1}
      ]
    },
    {
      'questionText': "What's your favorite instructor",
      'answer': [
        {'text': 'Matt', 'score': 10},
        {'text': 'Smith', 'score': 5},
        {'text': 'Frank', 'score': 2},
        {'text': 'Teddy', 'score': 1},
      ]
    }
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz(){
    setState((){
    _questionIndex = 0;
    _totalScore = 0;
    });

  }
  void _answerQuestion(int score) {

    _totalScore =_totalScore +score;
    setState(
      () {
        _questionIndex = _questionIndex + 1;
      },
    );
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more question !');
    } else {
      print("No more question");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'My first app',
          ),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
