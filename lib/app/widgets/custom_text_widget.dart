import 'package:flutter/material.dart';

class CustomTextWidget extends StatelessWidget {
  final String text;
  final Color color;
  final double fontSize;
  final bool isBold;

  const CustomTextWidget(
      {Key? key,
      required this.text,
      required this.color,
      required this.fontSize,
      this.isBold = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: isBold ? FontWeight.bold : FontWeight.w500,
      ),
    );
  }
}
