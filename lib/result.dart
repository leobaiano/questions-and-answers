import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int value;

  const Result({super.key, required this.value});

  String get textResult {
    if (value < 3) {
      return 'Show!';
    } else {
      return 'Success!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        textResult,
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
