import 'package:choiss/question_bank.dart';
import 'package:choiss/quiz.dart';
import 'package:choiss/result.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'main.dart';

class TestView extends ConsumerStatefulWidget {
  const TestView({Key? key}) : super(key: key);

  @override
  TestViewState createState() => TestViewState();
}

class TestViewState extends ConsumerState<TestView> {
  QuestionBank questionBank = QuestionBank();

  var _questionIndex = 0;
  var _totalScore = [];

  void _resetQuiz() {
    ref.read(questionIndexProvider.notifier).state = 0;
    _totalScore = [];
  }

  void _answerQuestion(String score) {
    _totalScore.add(score);

    _questionIndex = _questionIndex + 1;

    ref.read(questionIndexProvider.notifier).state =
        ref.read(questionIndexProvider.notifier).state + 1;

    if (_questionIndex < questionBank.questions.length) {
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chois'),
        backgroundColor: const Color(0XFF7B61FF),
      ),
      body: Consumer(
        builder: (BuildContext context, WidgetRef ref, Widget? child) {
          final questionIndex = ref.watch(questionIndexProvider);

          return questionIndex < questionBank.questions.length
              ? Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Quiz(
                    answerQuestion: _answerQuestion,
                    questionIndex: questionIndex,
                    questions: questionBank.questions,
                  ),
                ) //Quiz
              : Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Result(
                    _totalScore.length,
                    _resetQuiz,
                    totalScore: _totalScore,
                  ),
                );
        },
      ), //Padding
    );
  }
}
