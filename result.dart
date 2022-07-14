import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  int resultScore;
  final VoidCallback resetHandler;
  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore == 50) {
      resultText = 'Hey! You\'re Beautiful and Special ';
    } else if (resultScore == 1) {
      resultText = 'Damn! You\'re so Weird and Confused';
    } else if (resultScore == 44) {
      resultText = 'You\'re such an awesome person!';
    } else if (resultScore == 18) {
      resultText = 'You\'re so diffult to understand';
    } else if (resultScore <= 39) {
      resultText = 'You\'re a Nice person';
    } else {
      resultText = 'Nice meeting You!';
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
            style: TextStyle(
                backgroundColor: Colors.white12,
                fontSize: 20,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Restart Quiz'),
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}
