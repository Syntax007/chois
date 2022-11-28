import 'package:choiss/question_bank.dart';
import 'package:choiss/splashScreen.dart';
import 'package:choiss/view_chart.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(const ProviderScope(child: MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFE5E5E5),
      ),
    );
  }
}

var questionIndexProvider = StateProvider((ref) => 0);
