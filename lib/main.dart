import 'package:flutter/material.dart';

void main() => runApp(AnswersApp());

class AnswersApp extends StatefulWidget {

  @override
  State<AnswersApp> createState() => _AnswersAppState();
}

class _AnswersAppState extends State<AnswersApp> {
  var selectedQuestion = 0;

  void answer() {
    setState(() {
      selectedQuestion++;
    });
    print(selectedQuestion);
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
            Text(questions[selectedQuestion]),
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
