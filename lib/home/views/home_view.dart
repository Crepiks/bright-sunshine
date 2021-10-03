import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
        child: Column(children: [
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
                  style: TextStyle(color: AppColors.blackColor, fontSize: 14),
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
      ),
    );
  }
}
