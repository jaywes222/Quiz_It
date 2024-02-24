import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText(this.outputText, {super.key});

  final String outputText;

  @override
  Widget build(context) {
    return Text(
      outputText,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 28,
      ),
    );
  }
}
