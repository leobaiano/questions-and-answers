import 'package:flutter/material.dart';

void main() {
  runApp(const AnswersApp());
}

class AnswersApp extends StatelessWidget {
  const AnswersApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Text('Questions and Answers!'),
    );
  }
  
}