import 'dart:ui';

import "package:flutter/material.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sunshine/common/action_button.dart';
import 'package:sunshine/common/colors.dart';
import 'package:sunshine/layouts/safe_area_layout.dart';

class StepperView extends StatefulWidget {
  StepperView({Key? key}) : super(key: key);

  @override
  _StepperViewState createState() => _StepperViewState();
}

class _StepperViewState extends State<StepperView> {
  int _pageNumber = 0;
  List<StepData> _stepperData = [
    StepData('First, we will determine your location',
        "assets/images/stepper/location.png"),
    StepData("Then, select a date or time interval",
        "assets/images/stepper/date-widget.png"),
    StepData("And finally, study the solar data for the specified period",
        "assets/images/stepper/graph.png")
  ];

  void nextPage() {
    setState(() {
      _pageNumber != 2
          ? _pageNumber++
          : Navigator.pushReplacementNamed(context, "home");
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeAreaLayout(
      backgroundColor: AppColors.primaryColor,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 25, horizontal: 20),
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      child: AnimatedOpacity(
                        opacity: 1,
                        duration: Duration(milliseconds: 200),
                        child: Text(
                          _stepperData[_pageNumber].text,
                          key: ValueKey<int>(_pageNumber),
                          style: TextStyle(
                              color: AppColors.blackColor,
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                              height: 1.3),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    AnimatedSwitcher(
                        duration: Duration(milliseconds: 200),
                        child: Image(
                          key: ValueKey<int>(_pageNumber),
                          image:
                              AssetImage(_stepperData[_pageNumber].imagePath),
                          width: 300,
                        ))
                  ],
                ),
              ),
            ),
            Column(
              children: [
                StepperPoints(
                  stepperLength: _stepperData.length,
                  activePoint: _pageNumber,
                  clickPoint: (newPageNumber) => {
                    setState(() {
                      this._pageNumber = newPageNumber;
                    })
                  },
                ),
                SizedBox(
                  height: 30,
                ),
                ActionButton(
                  buttonContent: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _pageNumber != _stepperData.length - 1
                          ? SizedBox(width: 6)
                          : Container(),
                      Text(
                        _pageNumber != _stepperData.length - 1
                            ? "Next"
                            : "Got it",
                        style: TextStyle(
                            color: AppColors.blackColor,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                      _pageNumber != _stepperData.length - 1
                          ? SizedBox(
                              width: 15,
                            )
                          : Container(),
                      _pageNumber != _stepperData.length - 1
                          ? FaIcon(
                              FontAwesomeIcons.arrowRight,
                              color: Colors.black,
                              size: 18,
                            )
                          : Container()
                    ],
                  ),
                  buttonClicked: _pageNumber != _stepperData.length - 1
                      ? () => nextPage()
                      : () => Navigator.pushReplacementNamed(context, "home"),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class StepperPoints extends StatefulWidget {
  final int stepperLength;
  final int activePoint;
  final Function clickPoint;

  StepperPoints(
      {Key? key,
      required this.stepperLength,
      required this.activePoint,
      required this.clickPoint})
      : super(key: key);

  @override
  _StepperPointsState createState() => _StepperPointsState();
}

class _StepperPointsState extends State<StepperPoints> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int i = 0; i < widget.stepperLength; i++)
          widget.activePoint != i
              ? GestureDetector(
                  child: Container(
                    width: 34,
                    height: 34,
                    color: AppColors.primaryColor,
                    child: Center(
                      child: Container(
                        width: 16,
                        height: 16,
                        decoration: BoxDecoration(
                            color: AppColors.blackColor,
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    ),
                  ),
                  onTap: () => {widget.clickPoint(i)},
                )
              : Container(
                  width: 34,
                  height: 34,
                  color: AppColors.primaryColor,
                  child: Center(
                    child: Container(
                      width: 16,
                      height: 16,
                      decoration: BoxDecoration(
                          color: AppColors.primaryColor,
                          border:
                              Border.all(color: AppColors.blackColor, width: 4),
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ),
                )
      ],
    );
  }
}

class StepData {
  final String text;
  final String imagePath;

  StepData(this.text, this.imagePath);
}
