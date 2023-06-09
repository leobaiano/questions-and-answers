import 'package:flutter/material.dart';
import 'package:questions_and_answers/result.dart';
import './result.dart';
import './quiz.dart';

void main() => runApp(const AnswersApp());

class AnswersApp extends StatefulWidget {
  const AnswersApp({super.key});

  @override
  State<AnswersApp> createState() => _AnswersAppState();
}

class _AnswersAppState extends State<AnswersApp> {
  var _selectedQuestion = 0;
  var _totalValue = 0;
  final _questions = const [
    {
      'question': 'What is your favorite color?',
      'answers': [
        {'text': 'Blue', 'value': 1},
        {'text': 'Red', 'value': 2},
        {'text': 'Pink', 'value': 3},
      ]
    },
    {
      'question': 'What is your favorite animal?',
      'answers': [
        {'text': 'Elephant', 'value': 1},
        {'text': 'Snake', 'value': 2},
        {'text': 'Cat', 'value': 3},
      ]
    },
  ];
  void _answer(int value) {
    if (isQuestionSelected) {
      setState(() {
        _selectedQuestion++;
        _totalValue += value;
      });
    }
  }

  void restatQuiz() {
    setState(() {
      _selectedQuestion = 0;
      _totalValue = 0;
    });
  }

  bool get isQuestionSelected {
    return _selectedQuestion < _questions.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text("Questions"),
      ),
      body: isQuestionSelected
          ? Quiz(
              questions: _questions,
              selectedQuestion: _selectedQuestion,
              answer: _answer,
            )
          : Result(
              value: _totalValue,
              onRestartQuiz: restatQuiz,
            ),
    ));
  }
}
