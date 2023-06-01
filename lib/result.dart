import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int value;
  final void Function() onRestartQuiz;

  const Result({super.key, required this.value, required this.onRestartQuiz});

  String get textResult {
    if (value < 3) {
      return 'Show!';
    } else {
      return 'Success!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            textResult,
            style: const TextStyle(fontSize: 20),
          ),
        ),
        TextButton(
          onPressed: onRestartQuiz,
          style: TextButton.styleFrom(
            minimumSize: const Size(300, 10),
            backgroundColor: Colors.blue,
            padding: const EdgeInsets.all(20),
            foregroundColor: Colors.white,
          ),
          child: const Text(
            'Restart?',
            style: TextStyle(fontSize: 22),
          ),
        )
      ],
    );
  }
}
