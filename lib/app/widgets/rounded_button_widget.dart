import 'package:flutter/material.dart';
import 'package:summary_card/app/styles/app_colors.dart';

class RoundedButtonWidget extends StatelessWidget {
  final String label;
  final Function()? onPressed;

  const RoundedButtonWidget({
    Key? key,
    required this.label,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        label,
        style: TextStyle(
            color: AppColors.primary,
            fontWeight: FontWeight.w700,
            fontSize: 16),
      ),
      style: ElevatedButton.styleFrom(
          elevation: 0,
          primary: AppColors.white,
          shape: RoundedRectangleBorder(
              side: BorderSide(color: AppColors.primary, width: 2),
              borderRadius: BorderRadius.circular(50))),
    );
  }
}
