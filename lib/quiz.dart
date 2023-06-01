import 'package:flutter/material.dart';
import './questions.dart';
import 'answers.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int selectedQuestion;
  final void Function(int value) answer;

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
    List<Map<String, Object>> answers =
        isQuestionSelected ? questions[selectedQuestion].cast()['answers'] : [];

    List answersWidgets = answers
        .map((response) => Answers(
            text: response.cast()['text'],
            onSelected: () => answer(response.cast()['value'])))
        .toList();

    return Column(children: <Widget>[
      Questions(text: questions[selectedQuestion]['question'].toString()),
      ...answersWidgets
    ]);
  }
}
