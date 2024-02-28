import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  final String? name;
  final String label;
  final double fontSize;
  final FontWeight fontWeight;
  final Color labelColor;

  const CustomText({
    super.key,
    this.name,
    required this.label,
    this.labelColor = const Color.fromARGB(255, 237, 223, 252),
    this.fontSize = 24,
    this.fontWeight = FontWeight.bold,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: GoogleFonts.lato(
        color: labelColor,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
    );
  }
}
