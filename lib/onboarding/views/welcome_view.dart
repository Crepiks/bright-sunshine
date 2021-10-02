import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sunshine/common/colors.dart';
import 'package:sunshine/home/views/home_view.dart';

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
                  "Monitor solar data with Sunshine",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 14),
                  child: Text(
                    'Sunshine uses NASA API of solar data all over the world to provide relevant data for owners of solar bataries',
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
                        child: Text("Let's get started",
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
                    Navigator.pushReplacement(
                        context,
                        CupertinoPageRoute(
                            builder: (context) => const HomeView()));
                  }),
            )
          ],
        ),
      )),
      backgroundColor: primaryColor,
    );
  }
}
