import 'package:edu_app/constants.dart';
import 'package:flutter/material.dart';

class Semester1 extends StatelessWidget {
  const Semester1({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ColorTheme.bgColor,
      body: Center(
        child: Text("Semester 1"),
      ),
    );
  }
}
