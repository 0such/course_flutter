import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(context) {
    return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/images/quiz-logo.png', width: 260),
          const SizedBox(height: 40),
          const Text('Learn Flutter the fun way!', style: TextStyle(fontSize: 20, color: Colors.white),),
          const SizedBox(height: 40),
          OutlinedButton(onPressed: () {}, child: const Text('Start Quiz', style: TextStyle(color: Colors.white),)),
        ]);
  }
}
