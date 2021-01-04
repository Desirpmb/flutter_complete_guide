import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'You are awesome and innocent!' + resultScore.toString();
    } else if (resultScore <= 12) {
      resultText =
          'Pretty likeable!' + ' your score : ' + resultScore.toString();
    } else if (resultScore <= 16) {
      resultText =
          'You are... Strange?!' + ' your score : ' + resultScore.toString();
    } else {
      resultText =
          'You are so bad!' + ' your score : ' + resultScore.toString();
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Restart Quiz'),
            textColor: Colors.blue[800],
            onPressed: resetHandler,
          )
        ],
      ),
    );
  }
}
