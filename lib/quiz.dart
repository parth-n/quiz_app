import 'package:flutter/material.dart';
import 'package:quiz_app/ques_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

// leading underscore _ makes it a private class which can only be accesed in this file
class _QuizState extends State<Quiz> {
  Widget activeScreen =
      const StartScreen(); //widgets can be stored in variables as they are nothing but objects in flutter.

  void switchScreen() {
    setState(() {
      //setState method calls the build method executes again when the setState is in a state class which is connected to a stateful class
      activeScreen = const QuesScreen();
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 139, 78, 243),
                Color.fromARGB(255, 84, 54, 164)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: activeScreen,
        ),
      ),
    );
  }
}
