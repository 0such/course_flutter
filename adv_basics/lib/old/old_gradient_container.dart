import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

const startAlignment = Alignment.topCenter;
const endAlignment = Alignment.bottomCenter;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.content, {super.key});

  final Widget content;

  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          Color.fromARGB(255, 54, 11, 95),
          Color.fromARGB(255, 154, 30, 158)
        ], begin: startAlignment, end: endAlignment),
      ),
      child: Center(child: content),
    );
  }
}
