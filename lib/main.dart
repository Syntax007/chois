import 'package:choiss/question_bank.dart';
import 'package:choiss/view_chart.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(const ProviderScope(child: MyApp()));

class MyApp extends ConsumerStatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  MyAppState createState() {
    return MyAppState();
  }
}

var questionIndexProvider = StateProvider((ref) => 0);

class MyAppState extends ConsumerState<MyApp> {
  QuestionBank questionBank = QuestionBank();

  var _questionIndex = 0;
  var _totalScore = [];

  void _resetQuiz() {
    //
  }

  void _answerQuestion(String score) {
    _totalScore.add(score);

    //setState(() {
    _questionIndex = _questionIndex + 1;

    ref.read(questionIndexProvider.notifier).state =
        ref.read(questionIndexProvider.notifier).state + 1;

    // });
    // ignore: avoid_print
    print(_questionIndex);
    print('provider answer ${ref.watch(questionIndexProvider)}');
    if (_questionIndex < questionBank.questions.length) {
      // ignore: avoid_print
      print('We have more questions!');
    } else {
      // ignore: avoid_print
      print('No more questions!');
    }
  }



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Chois'),
          backgroundColor: const Color(0XFF7B61FF),
        ),
        body: Consumer(
          builder: (BuildContext context, WidgetRef ref, Widget? child) {
            final questionIndex = ref.watch(questionIndexProvider);

            return Padding(
              padding: const EdgeInsets.all(30.0),
              child: questionIndex < questionBank.questions.length
                  ? Quiz(
                      answerQuestion: _answerQuestion,
                      questionIndex: questionIndex,
                      questions: questionBank.questions,
                    ) //Quiz
                  : Result(_totalScore.length, totalScore: _totalScore,),
            );
          },
        ), //Padding
      ), //Scaffold
      debugShowCheckedModeBanner: false,
    ); //MaterialApp
  }
}
