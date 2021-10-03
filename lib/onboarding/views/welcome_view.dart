import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sunshine/common/action_button.dart';
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.1,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Sunshine",
                        style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.w900,
                            color: AppColors.blackColor),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      FaIcon(FontAwesomeIcons.solidSun,
                          color: AppColors.blackColor, size: 40)
                    ],
                  ),
                  SizedBox(height: 15),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: Text(
                      'Application for tracking solar data',
                      style: TextStyle(
                          color: AppColors.blackColor,
                          fontSize: 22,
                          height: 1.3),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SvgPicture.asset(
                    "assets/images/welcome-image.svg",
                    width: MediaQuery.of(context).size.width,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 25),
              child: SizedBox(
                  width: double.infinity,
                  child: ActionButton(
                    buttonContent: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Start",
                          style: TextStyle(
                              color: AppColors.blackColor,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        FaIcon(
                          FontAwesomeIcons.arrowRight,
                          color: Colors.black,
                          size: 18,
                        )
                      ],
                    ),
                    buttonClicked: () => {},
                    reverseColor: true,
                  )),
            )
          ],
        ),
      )),
      backgroundColor: AppColors.backgroundColor,
    );
  }
}
