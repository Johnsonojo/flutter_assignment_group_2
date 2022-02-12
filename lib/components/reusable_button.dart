import 'package:flutter/material.dart';

class ReusableButton extends StatelessWidget {
  final Color backgroundColor;
  final double fontSize;
  final FontWeight? fontWeight;
  final double height;
  final VoidCallback onPressed;
  final String text;
  final Color textColor;
  final double width;
  final BorderRadius? borderRadius;

  const ReusableButton(
      {Key? key,
      required this.backgroundColor,
      required this.fontSize,
      required this.fontWeight,
      required this.height,
      required this.onPressed,
      required this.text,
      required this.textColor,
      required this.width,
      this.borderRadius})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: borderRadius,
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                letterSpacing: 1.5,
                color: textColor,
                fontSize: fontSize,
                fontWeight: fontWeight),
          ),
        ),
      ),
    );
  }
}
