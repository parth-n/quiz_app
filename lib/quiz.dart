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
  var activeScreen =
      'start-screen'; //widgets can be stored in variables as they are nothing but objects in flutter.
  //widget? means that active screen can also be null.

  void switchScreen() {
    setState(() {
      //setState method calls the build method executes again when the setState is in a state class which is connected to a stateful class
      activeScreen = 'Ques-Screen';
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'Ques-Screen') {
      screenWidget = const QuesScreen();
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 135, 112, 171),
                Color.fromARGB(255, 43, 46, 108),
                Color.fromARGB(255, 64, 29, 158)
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
