import 'dart:async';

import 'package:edu_app/screens/dash_board.dart';
import 'package:edu_app/screens/start_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Timer(const Duration(seconds: 3), onLoadSplashScreen);
    super.initState();
  }

  void onLoadSplashScreen() {
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(
          builder: (context) => const StartPage(),
        ),
        (route) => false);
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Lottie.network(
            height: size.height * 0.15,
            width: size.height * 0.15,
            fit: BoxFit.scaleDown,
            "https://assets9.lottiefiles.com/private_files/lf30_t9h3vpwn.json"),
      ),
    );
  }
}
