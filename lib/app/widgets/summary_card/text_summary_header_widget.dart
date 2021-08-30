import 'package:flutter/material.dart';
import 'package:summary_card/app/styles/app_colors.dart';

import '../custom_text_widget.dart';

class TextSummaryHeaderWidget extends StatelessWidget {
  final String text;
  final double? fontSize;

  const TextSummaryHeaderWidget({Key? key, required this.text, this.fontSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomTextWidget(
      text: text,
      color: AppColors.grey,
      fontSize: fontSize ?? 17,
    );
  }
}
