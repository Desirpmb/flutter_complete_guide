import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;
  void answerQuestion() {
    setState(
      () {
        questionIndex = questionIndex + 1;
      },
    );
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "What's your favorite color?",
      "What's your favorite animal?",
    ];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              'My first app',
            ),
          ),
          body: Column(
            children: [
              Question(questions[questionIndex]),
              Answer(
                answerQuestion,
              ),
              Answer(
                answerQuestion,
              ),
              Answer(
                answerQuestion,
              ),
            ],
          )),
    );
  }
}
