import 'package:bookup/core/core.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.backgroundColor = Colors.white,
    required this.textColor,
    required this.text,
    required this.borderRadius,
  });
  final Color backgroundColor;
  final Color textColor;
  final String text;
  final BorderRadius borderRadius;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        foregroundColor: textColor,
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(borderRadius: borderRadius),
        padding: EdgeInsets.symmetric(vertical: AppSizes.w16),
        textStyle: TextStyle(
          fontSize: AppSizes.sp16,
          fontWeight: FontWeight.bold,
        ),
      ),
      child: Text(text),
    );
  }
}
