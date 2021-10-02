import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Container(
                    padding: const EdgeInsets.only(top: 60, bottom: 60),
                    child: const Image(
                        image: AssetImage("assets/images/backpack-space.png"))),
                const Text(
                  "Помогаем следить за уровнем освещенности",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 14),
                  child: Text(
                    'Sunshine использует API NASA с данными об освещенности по всему миру, чтобы Вам легче было принять решение о покупке солнечных батарей',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                )
              ],
            ),
            SizedBox(
              width: double.infinity,
              child: CupertinoButton(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  borderRadius: const BorderRadius.all(Radius.circular(12)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(right: 12),
                        child: Text("Продолжить",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 18)),
                      ),
                      FaIcon(
                        FontAwesomeIcons.arrowRight,
                        color: Colors.black,
                        size: 20,
                      )
                    ],
                  ),
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
