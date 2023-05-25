import 'package:flutter/material.dart';
import './questions.dart';

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
    print(_selectedQuestion);
  }

  @override
  Widget build(BuildContext context) {
    final List<String> questions = [
      'What is your favorite color?',
      'What is your favorite animal?'
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Questions"),
        ),
        body: Column(
          children: <Widget>[
            Questions(texto: questions[_selectedQuestion]),
            ElevatedButton(
              onPressed: _answer,
              child: const Text('Answer 1'),
            ),
            ElevatedButton(
              onPressed: _answer,
              child: const Text('Answer 2'),
            ),
            ElevatedButton(
              onPressed: _answer,
              child: const Text('Answer 3'),
            ),
          ],
        )
      ),
    );
  }
}
