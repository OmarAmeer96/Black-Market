import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "This is Home Screen 😊🧡",
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 40),
      ),
    );
  }
}
