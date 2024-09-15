import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({
    super.key,
    required this.answer,
    required this.ontap,
  });

  final String answer;
  final void Function() ontap;

  @override
  Widget build(context) {
    return ElevatedButton(
      onPressed: ontap,
      style: TextButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        foregroundColor: const Color.fromARGB(246, 0, 0, 0),
        textStyle: const TextStyle(fontSize: 19, fontStyle: FontStyle.italic),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(48)),
      ),
      child: Text(
        answer,
        textAlign: TextAlign.center,
      ),
    );
  }
}
