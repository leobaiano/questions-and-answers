import 'package:flutter/material.dart';

void main() => runApp(AnswersApp());

class AnswersApp extends StatelessWidget {
  
  void answer() {
    print('Question answer');
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
            Text(questions[0]),
            ElevatedButton(
              child: Text('Answer 1'),
              onPressed: answer,
            ),
            ElevatedButton(
              child: Text('Answer 2'),
              onPressed: answer,
            ),
            ElevatedButton(
              child: Text('Answer 3'),
              onPressed: answer,
            ),
          ],
        )
      ),
    );
  }
}
