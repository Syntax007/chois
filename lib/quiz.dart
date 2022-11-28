import 'package:flutter/material.dart';

import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  const Quiz({
    Key? key,
    required this.questions,
    required this.answerQuestion,
    required this.questionIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          LinearProgressIndicator(
            value: questionIndex / questions.length,
            minHeight: 10,
            backgroundColor: Colors.grey,
            valueColor: const AlwaysStoppedAnimation<Color>(Color(0XFF7B61FF)),
          ),

          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          Question(
            questions[questionIndex]['questionText'].toString(),
          ), //Question

          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
              .map((answer) {
            return Answer(

                    () => answerQuestion(answer['score']), answer['text'].toString());
          }).toList(),
        ],
      ),
    ); //Column
  }
}
