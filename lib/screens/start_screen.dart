import 'package:edu_app/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100.0),
        child: AppBar(
          toolbarHeight: 120,
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: const Text(
            "Let's begin the journey",
            style: TextStyle(color: Colors.black, fontSize: 23),
          ),
        ),
      ),
      backgroundColor: Color(0xFFFBFBFC),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          //  Text("data"),
          SizedBox(
            height: size.height * 0.033,
          ),
          Center(
              child: Lottie.network(
                  "https://assets6.lottiefiles.com/packages/lf20_ncpnijkz.json")),
          InkWell(
            onTap: () => Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(
                  builder: (context) => const SplashScreen(),
                ),
                (route) => false),
            child: Container(
              height: size.height * 0.043,
              width: size.width * 0.43,
              decoration: BoxDecoration(color: Color(0xFFF7941C)),
              child: const Center(
                child: Text(
                  "Start",
                  style: TextStyle(color: Colors.white, fontSize: 23),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
