import 'package:flutter/material.dart';
import 'package:adv_basics/old/old_gradient_container.dart';
import 'package:adv_basics/old/old_splash_screen.dart';


void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(SplashScreen()),
      ),
    ),
  );
}
