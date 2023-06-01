import 'package:flutter/material.dart';
import './questions.dart';
import 'answers.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int selectedQuestion;
  final void Function() answer;

  const Quiz(
      {super.key,
      required this.questions,
      required this.selectedQuestion,
      required this.answer});

  bool get isQuestionSelected {
    return selectedQuestion < questions.length;
  }

  @override
  Widget build(BuildContext context) {
    List<String> answers =
        isQuestionSelected ? questions[selectedQuestion].cast()['answers'] : [];

    List answersWidgets = answers
        .map((text) => Answers(text: text, onSelected: answer))
        .toList();

    return Column(children: <Widget>[
      Questions(text: questions[selectedQuestion]['question'].toString()),
      ...answersWidgets
    ]);
  }
}
