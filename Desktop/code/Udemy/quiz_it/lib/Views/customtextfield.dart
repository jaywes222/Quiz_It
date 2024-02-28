import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final bool obscureText;
  final String? hintMessage;
  final IconData? icon;
  final bool isPassword;

  const CustomTextField({
    super.key,
    required this.controller,
    this.obscureText = false,
    this.hintMessage,
    this.icon,
    this.isPassword = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(
              color: Color.fromARGB(255, 237, 223, 252),
              width: 10,
            ),
          ),
          hintText: hintMessage,
          prefixIcon: Icon(icon),
          suffixIcon: isPassword
              ? const Icon(Icons.visibility)
              : Container(
                  height: 10,
                  width: 10,
                )),
    );
  }
}
