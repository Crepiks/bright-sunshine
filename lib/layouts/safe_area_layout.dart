import "package:flutter/material.dart";
import 'package:sunshine/common/colors.dart';

class SafeAreaLayout extends StatelessWidget {
  final Widget child;

  const SafeAreaLayout({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: child),
      backgroundColor: AppColors.backgroundColor,
    );
  }
}
