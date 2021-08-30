import 'package:flutter/material.dart';

class VerticalSpacerWidget extends StatelessWidget {
  final double height;

  const VerticalSpacerWidget({Key? key, required this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
    );
  }
}
