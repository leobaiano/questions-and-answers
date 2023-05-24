import 'package:flutter/material.dart';

void main() => runApp(AnswersApp());

class AnswersApp extends StatelessWidget {
  final List<String> questions = [
    'What is your favorite color?',
    'What is your favorite animal?'
  ];


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Questions"),
        ),
        body: Column(
          children: <Widget>[
            Text(questions[0]),
            const ElevatedButton(
              child: Text('Answer 1'),
              onPressed: null,
            ),
            const ElevatedButton(
              child: Text('Answer 2'),
              onPressed: null,
            ),
            const ElevatedButton(
              child: Text('Answer 3'),
              onPressed: null,
            ),
          ],
        )
      ),
    );
  }
}
