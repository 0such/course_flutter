import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';
//import 'package:first_app/styled_text.dart';

const startAlignment = Alignment.topCenter;
const endAlignment = Alignment.bottomCenter;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.bgColors});

  final List<Color> bgColors;



  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: bgColors, begin: startAlignment, end: endAlignment),
      ),
      child: const Center(
        child: DiceRoller()
      ),
    );
  }
}
