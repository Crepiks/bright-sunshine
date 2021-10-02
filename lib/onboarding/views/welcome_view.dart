import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sunshine/common/colors.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              width: double.infinity,
              child: CupertinoButton(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  borderRadius: const BorderRadius.all(Radius.circular(12)),
                  child: const Text("Продолжить",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 18)),
                  color: Colors.white,
                  onPressed: () {
                    print("Continue");
                  }),
            )
          ],
        ),
      )),
      backgroundColor: primaryColor,
    );
  }
}
