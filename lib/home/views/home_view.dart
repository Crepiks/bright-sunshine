import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:sunshine/onboarding/views/welcome_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CupertinoButton(
            child: const Text("Back"),
            onPressed: () {
              Navigator.pushReplacement(
                  context,
                  CupertinoPageRoute(
                      builder: (context) => const WelcomeView()));
            }),
      ),
    );
  }
}
