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
      'answer': ['Red', 'Yellow', 'Green', 'Grey']
    },
    {
      'questionText': "What's your favorite animal?",
      'answer': ['Lion', 'Cat', 'Dog']
    },
    {
      'questionText': "What's your favorite instructor",
      'answer': ['Matt', 'Matt', 'Matt', 'Desir']
    }
  ];

  var _questionIndex = 0;
  void _answerQuestion() {
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
            : Result(),
      ),
    );
  }
}
