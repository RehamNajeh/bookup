
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key,  this.backgroundColor=Colors.white, required this.textColor, required this.text, required this.borderRadius,});
final Color backgroundColor;
final Color textColor;
final String text;
final BorderRadius borderRadius;
  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: () {}, style: TextButton.styleFrom(
      foregroundColor: textColor,
      backgroundColor:backgroundColor,
      shape: RoundedRectangleBorder(
        borderRadius: borderRadius,
      ),
      padding: const EdgeInsets.symmetric( vertical: 16),
      textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
    ),
    child: Text(text),
    );
  }
}