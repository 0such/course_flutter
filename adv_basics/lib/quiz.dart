import 'package:adv_basics/data/questions.dart';
import 'package:adv_basics/questions_screen.dart';
import 'package:flutter/material.dart';
import 'package:adv_basics/start_screen.dart';
import 'package:adv_basics/results_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  //Widget? activeScreen;
  // @override void initState() { //przekazanie wskaźnika funkcji musi nastąpić z poziomu InitState, ponieważ poza tym blokiem wywołanie StartScreen(switchScreen) powoduje przekazanie wskaźnika funk. do funkcji, która jeszcze nie istnieje, ponieważ instrukcje wykonywane są w podobnym momencie w tej klasie. Możliwe jest to natomiast w funkcji build().
  //   super.initState();
  //   activeScreen = StartScreen(switchScreen);
  // }

  List<String> selectedAnswers = [];
  var activeScreen = 'quiz-screen';

  void switchScreen() {
    setState(() {
      selectedAnswers = [];
      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'result-screen';
      });
    }
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);
    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionsScreen(onSelectAnswer: chooseAnswer);
    } else if (activeScreen == 'result-screen') {
      screenWidget = ResultsScreen(chosenAnswers: selectedAnswers, startQuiz: switchScreen,);
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 106, 13, 129),
              Color.fromARGB(255, 136, 24, 112)
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
