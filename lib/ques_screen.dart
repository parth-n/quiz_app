import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuesScreen extends StatefulWidget {
  const QuesScreen({super.key, required this.onSelectAns});

  final void Function(String answer) onSelectAns;

  @override
  State<QuesScreen> createState() {
    return _QuesScreenState();
  }
}

class _QuesScreenState extends State<QuesScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion(String selectedAns) {
    // to call the build method again, setState should be used.
    widget.onSelectAns(selectedAns);
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQues = questions[currentQuestionIndex];

    return SizedBox(
      width: double.infinity, // double.infinity is for maximum width possible
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQues.text,
              style: GoogleFonts.lato(
                  color: const Color.fromARGB(255, 217, 193, 247),
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 60,
            ),
            ...currentQues.getShuffledAnswers().map((answer) {
              //(...) spread is a built in operator.
              return AnswerButton(
                  answertext: answer,
                  onTap: () {
                    answerQuestion(answer);
                  });
            }),
          ],
        ),
      ),
    );
  }
}
