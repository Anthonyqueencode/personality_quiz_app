import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart';
import './result.dart';

void main() => runApp(QuizApp());

class QuizApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return QuizAppState();
  }
}

class QuizAppState extends State<QuizApp> {
  final questions = const [
    {
      'questionText': 'what\'s your Gender',
      'answers': [
        {'text': 'FEMALE', 'score': 10},
        {'text': 'MALE', 'score': 4},
        {'text': 'NOT SPECIFIC', 'score': 1},
        {'text': 'IN-BETWEEN', 'score': 2},
        {'text': 'None of the above', 'score': 0}
      ],
    },
    {
      'questionText': 'what\'s your best color',
      'answers': [
        {'text': 'WHITE', 'score': 5},
        {'text': 'BLUE', 'score': 3},
        {'text': 'PINK', 'score': 1},
        {'text': 'YELLOW', 'score': 2},
        {
          'text': 'RED',
          'score': 10,
        },
        {'text': 'NONE', 'score': 0},
      ],
    },
    {
      'questionText': 'what\'s your skin color',
      'answers': [
        {'text': 'FAIR', 'score': 10},
        {'text': 'DARK', 'score': 10},
        {'text': 'CHOCOLATE', 'score': 5},
        {'text': 'NOT SURE', 'score': 1},
        {'text': 'NONE', 'score': 0}
      ],
    },
    {
      'questionText': 'what\'s  your favorite country',
      'answers': [
        {'text': 'CHICAGO', 'score': 10},
        {'text': 'PARIS', 'score': 5},
        {'text': 'LONDON', 'score': 3},
        {'text': 'CANADA', 'score': 8},
        {'text': 'NIGERIA', 'score': 0}
      ],
    },
    {
      'questionText': 'what\'s  your hobby',
      'answers': [
        {'text': 'DANCING', 'score': 10},
        {'text': 'SWIMMING', 'score': 15},
        {'text': 'HIKING', 'score': 2},
        {'text': 'WRITTING', 'score': 5},
        {'text': 'READING', 'score': 4},
        {'text': 'SLEEPING', 'score': 1},
      ],
    },
  ];
  var questionIndex = 0;
  var totalScore = 0;

  void resetQuiz() {
    setState(() {
      questionIndex = 0;
      totalScore = 0;
    });
  }

  void answerQuestion(int score) {
    totalScore += score;
    //  MEANS the SAME THING AS totalScore = totalScore + score;
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
    if (questionIndex < questions.length) {
      print('hey i worked');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.greenAccent,
          title: Text('The real quiz '),
        ),
        body: questionIndex < questions.length
            ? Quiz(
                answerQuestion: answerQuestion,
                questionIndex: questionIndex,
                questions: questions,
              )
            : Result(totalScore, resetQuiz),
      ),
    );
  }
}
