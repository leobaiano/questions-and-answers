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
    if(isQuestionSelected) {
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
    List<String> answers = isQuestionSelected
        ? _questions[_selectedQuestion].cast()['answers']
        : [];

    List<Widget> answersWidgets = answers
        .map((text) => Answers(text: text, onSelected: _answer))
        .toList();

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Questions"),
          ),
          body: isQuestionSelected
              ? Column(
                  children: <Widget>[
                    Questions(
                        text: _questions[_selectedQuestion]['question']
                            .toString()),
                    ...answersWidgets
                  ],
                )
              : null),
    );
  }
}
