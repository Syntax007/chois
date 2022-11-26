import 'package:choiss/main.dart';
import 'package:flutter/material.dart';

class TestView extends StatelessWidget {
  const TestView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0XFF7B61FF),
        title: Text("Chois"),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Know your Choice of Department",
                textAlign: TextAlign.center,
                //style: AppStyle.kRegular18,
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                child: Text("Take a test"),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MyApp()));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
