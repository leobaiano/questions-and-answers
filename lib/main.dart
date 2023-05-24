import 'package:flutter/material.dart';
import './questions.dart';

void main() => runApp(AnswersApp());

class AnswersApp extends StatefulWidget {

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
              child: Text('Answer 1'),
              onPressed: _answer,
            ),
            ElevatedButton(
              child: Text('Answer 2'),
              onPressed: _answer,
            ),
            ElevatedButton(
              child: Text('Answer 3'),
              onPressed: _answer,
            ),
          ],
        )
      ),
    );
  }
}
