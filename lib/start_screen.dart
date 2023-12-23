import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});
  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 300.00,
          color: const Color.fromARGB(120, 255, 255,
              255), // transparency can be added using this color method or by wrapping the image asset around a widget called "Opacity".
        ),
        const SizedBox(height: 70),
        const Text(
          'Learn Flutter the fun way !',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        const SizedBox(
          height: 40,
        ),
        OutlinedButton.icon(
          onPressed: () {
            debugPrint('received click');
            startQuiz();
          },
          icon: const Icon(
            Icons.ad_units,
            color: Colors.black,
          ),
          label: const Text(
            'Start Quiz',
            style: TextStyle(color: Colors.white),
          ),
        )
      ],
    ));
  }
}
