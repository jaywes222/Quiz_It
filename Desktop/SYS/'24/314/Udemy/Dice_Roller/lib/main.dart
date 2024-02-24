import 'package:first_app/Views/gradient_container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: GradientContainer(Color.fromARGB(255, 96, 125, 139),
            Color.fromARGB(255, 115, 130, 160)),
      ),
    ),
  );
}
