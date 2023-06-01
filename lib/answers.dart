import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  final String text;
  final void Function() onSelected;

  const Answers({super.key, required this.text, required this.onSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: const EdgeInsets.all(10),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            minimumSize: const Size.fromHeight(50), // NEW
          ),
          onPressed: onSelected,
          child: Text(text),
        ));
  }
}
