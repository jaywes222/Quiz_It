import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({
    required this.answerText,
    required this.onPress,
    super.key,
  });

  final String answerText;
  final void Function() onPress;

  @override
  Widget build(context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: onPress,
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
            backgroundColor: const Color.fromARGB(255, 33, 1, 95),
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
            ),
          ),
          child: Text(
            answerText,
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(
            height: 10), // Added line for vertical space between buttons
      ],
    );
  }
}
