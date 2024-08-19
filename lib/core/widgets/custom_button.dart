import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.onPressed,
      this.borderRadius,
      this.backgroundColor,
      this.foregroundColor,
      required this.text,
      this.textStyle});

  final void Function()? onPressed;
  final BorderRadiusGeometry? borderRadius;

  final Color? backgroundColor;
  final Color? foregroundColor;
  final String text;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 54,
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              backgroundColor: AppColors.primaryColor,
              foregroundColor: Colors.white),
          child: Text(
            text,
            style: textStyle,
          )),
    );
  }
}
