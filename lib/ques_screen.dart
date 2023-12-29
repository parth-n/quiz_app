import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';

class QuesScreen extends StatefulWidget {
  const QuesScreen({super.key});
  @override
  State<QuesScreen> createState() {
    return _QuesScreenState();
  }
}

class _QuesScreenState extends State<QuesScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity, // double.infinity is for maximum width possible
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('The question ',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          const SizedBox(
            height: 30,
          ),
          AnswerButton(
            answertext: 'Answer 1',
            onTap: () {},
          ),
          AnswerButton(
            answertext: 'Answer 2',
            onTap: () {},
          ),
          AnswerButton(
            answertext: 'Answer 3',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
