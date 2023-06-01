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
  final _questions = const [
    {
      'question': 'What is your favorite color?',
      'answers': ['Blue', 'Red', 'Pink']
    },
    {
      'question': 'What is your favorite animal?',
      'answers': ['Elephant', 'Snake', 'Cat']
    },
  ];
  void _answer() {
    if (isQuestionSelected) {
      setState(() {
        _selectedQuestion++;
      });
    }
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
              ? Quiz(questions: _questions, selectedQuestion: _selectedQuestion, answer: _answer,)
              : const Result(),
    ));
  }
}
