import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sunshine/common/action_button.dart';
import 'package:sunshine/common/colors.dart';
import 'package:sunshine/home/views/components/solar_chart.dart';
import 'package:sunshine/layouts/safe_area_layout.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeAreaLayout(
      backgroundColor: AppColors.backgroundColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(children: [
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Sunshine",
                          style: TextStyle(
                              fontSize: 24,
                              color: AppColors.blackColor,
                              fontWeight: FontWeight.w700),
                        ),
                        SizedBox(width: 6),
                        FaIcon(FontAwesomeIcons.solidSun,
                            size: 22, color: AppColors.blackColor)
                      ],
                    ),
                    Text(
                      "Kazakhstan, Almaty",
                      style:
                          TextStyle(color: AppColors.blackColor, fontSize: 14),
                    )
                  ]),
              SizedBox(
                height: 40,
              ),
              const SizedBox(
                width: double.infinity,
                height: 300,
                child: SolarChart(),
              )
            ]),
            Container(
              child: ActionButton(
                buttonContent: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Set coordinates",
                          style: TextStyle(
                              color: AppColors.black80Color,
                              fontSize: 20,
                              fontWeight: FontWeight.w500)),
                      SizedBox(
                        width: 15,
                      ),
                      FaIcon(
                        FontAwesomeIcons.syncAlt,
                        size: 18,
                        color: AppColors.black80Color,
                      )
                    ]),
                buttonClicked: () => {
                  showModalBottomSheet(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30))),
                      context: context,
                      builder: (context) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 30),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Setting coordinates",
                                      style: TextStyle(
                                          color: AppColors.blackColor,
                                          fontSize: 28,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 14,
                                    ),
                                    Text(
                                      "Here you will be able to set new coordinates and get new solar data",
                                      style: TextStyle(
                                          color: AppColors.black80Color,
                                          fontSize: 20,
                                          height: 1.4),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: double.infinity,
                                child: ActionButton(
                                  buttonContent: Text("Set and update"),
                                  buttonClicked: () => Navigator.pop(context),
                                  reverseColor: true,
                                ),
                              )
                            ],
                          ),
                        );
                      })
                },
              ),
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    color: AppColors.blackColor.withOpacity(0.03),
                    blurRadius: 20)
              ]),
            )
          ],
        ),
      ),
    );
  }
}
