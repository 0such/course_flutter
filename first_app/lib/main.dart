import 'package:flutter/material.dart';
import 'package:first_app/gradient_conteiner.dart';
void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(bgColors: [Color.fromARGB(255, 143, 21, 124), Color.fromARGB(255, 82, 8, 185)])
      ),
    ),
  );
}


