// ignore_for_file: avoid_print

import 'package:choiss/view_chart.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class Result extends ConsumerStatefulWidget {
  final int resultScore;
  final List totalScore;
  final void Function()? resetQuiz;

  const Result(this.resultScore, this.resetQuiz,
      {Key? key, required this.totalScore})
      : super(key: key);

  @override
  ResultState createState() => ResultState();
}

class ResultState extends ConsumerState<Result> {
  void getDecision() {
    int lta = 0;
    int ltc = 0;
    int lts = 0;

    for (int i = 0; i < widget.totalScore.length; i++) {
      if (widget.totalScore[i] == "LTA") {
        lta = lta + 1;
        ref.read(ltaProvider.notifier).state = lta;
      } else if (widget.totalScore[i] == "LTC") {
        ltc = ltc + 1;
        ref.read(ltcProvider.notifier).state = ltc;
      } else if (widget.totalScore[i] == "LTS") {
        lts = lts + 1;
        ref.read(ltsProvider.notifier).state = lts;
      }
    }
    print(widget.totalScore);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            "Congratulations Champ!",
            style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w600,
                color: Color(0XFF7B61FF)),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          const Text(
              "You’ve completed your test and you are just a step away from "
              "finding out what class suits you the most. Download the report now."),
          //Text
          const SizedBox(height: 48),
          //Text
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: TextButton(
              onPressed: () {
                getDecision();
                widget.resetQuiz!();

                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const ViewChart()));
              },
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(const Color(0XFF7B61FF)),
              ),
              child: const Text(
                'View Report',
                style: TextStyle(
                  color: Color(0XFFF4FCFE),
                ),
              ),
            ),
          ),
        ], //<Widget>[]
      ), //Column
    ); //Center
  }
}
