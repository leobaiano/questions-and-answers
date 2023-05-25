import 'package:flutter/material.dart';
import './questions.dart';
import './answers.dart';

void main() => runApp(const AnswersApp());

class AnswersApp extends StatefulWidget {
  const AnswersApp({super.key});

  @override
  State<AnswersApp> createState() => _AnswersAppState();
}

class _AnswersAppState extends State<AnswersApp> {
  var _selectedQuestion = 0;

  void _answer() {
    setState(() {
      _selectedQuestion++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Map<String, Object>> questions = [
      {
        'question': 'What is your favorite color?',
        'answers': ['Blue', 'Red', 'Pink']
      },
      {
        'question': 'What is your favorite animal?',
        'answers': ['Elephant', 'Snake', 'Cat']
      },
    ];

    List<String> answers = questions[_selectedQuestion].cast()['answers'];
    List<Widget> answersWidgets = answers
        .map((text) => Answers(text: text, onSelected: _answer))
        .toList();

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Questions"),
          ),
          body: Column(
            children: <Widget>[
              Questions(
                  text: questions[_selectedQuestion]['question'].toString()),
              ...answersWidgets
            ],
          )),
    );
  }
}
