import 'package:choiss/home_view.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  @override
  void initState() {
    super.initState();
    oneTimeOnBoarding();
    navigateToOnBoarding();
  }

  /// oneTimeOneOnBoarding method is used with SharedPreferences to show the Onboarding view only once.
  void oneTimeOnBoarding() async {
    // SharedPreferences preferences = await SharedPreferences.getInstance();
    // initScreen = await preferences.getInt("initScreen");
    // await preferences.setInt("initScreen", 1);
  }


  navigateToOnBoarding() async {
    await Future.delayed(const Duration(milliseconds: 2000), () {});
    //initScreen == 0 || initScreen == null ? Get.offAndToNamed(Routes.ONBOARDING_VIEW) : Get.offAndToNamed(Routes.USER_STATE_VIEW);
    Navigator.push(context, MaterialPageRoute(builder: (context) =>  const HomeView()));
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0XFFF4FCFE),
      body: Center(
        child: Text(
          "Chois",
          style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 36
          ),
        ),
      ),
    );
  }
}
