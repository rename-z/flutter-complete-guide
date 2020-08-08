import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerChosen;

  Quiz({
    @required this.questions,
    @required this.questionIndex,
    @required this.answerChosen,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(
          questions.elementAt(questionIndex)['questionText'],
        ),
        ...(questions.elementAt(questionIndex)['answers'] as List<String>)
            .map(
              (answer) => Answer(answerChosen, answer),
            )
            .toList(),
      ],
    );
  }
}
