import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:sunshine/common/colors.dart';

class ActionButton extends StatefulWidget {
  final Function buttonClicked;
  final Widget buttonContent;
  final bool reverseColor;

  const ActionButton(
      {Key? key,
      required this.buttonClicked,
      required this.buttonContent,
      this.reverseColor = false})
      : super(key: key);

  @override
  _ActionButtonState createState() => _ActionButtonState();
}

class _ActionButtonState extends State<ActionButton> {
  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
        padding: const EdgeInsets.symmetric(vertical: 20),
        borderRadius: const BorderRadius.all(Radius.circular(14)),
        child: widget.buttonContent,
        color: !widget.reverseColor ? AppColors.white : AppColors.primaryColor,
        onPressed: () => widget.buttonClicked());
  }
}
