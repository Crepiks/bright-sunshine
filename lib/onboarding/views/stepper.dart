import "package:flutter/material.dart";

class Stepper extends StatefulWidget {
  Stepper({Key? key}) : super(key: key);

  @override
  _StepperState createState() => _StepperState();
}

class _StepperState extends State<Stepper> {
  int _pageNumber = 1;
  List<StepData> stepperData = [
    StepData('First, we will determine your location',
        "assets/images/stepper/location.png"),
    StepData("Then, select a date or time interval",
        "assets/images/stepper/date-widget.png"),
    StepData("And finally, study the solar data for the specified period",
        "assets/images/stepper/graph.png")
  ];

  void nextPage() {
    setState(() {
      _pageNumber != 3
          ? _pageNumber++
          : Navigator.pushReplacementNamed(context, "home");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class StepData {
  final String text;
  final String imagePath;

  StepData(this.text, this.imagePath);
}
