import 'package:bookly_app/core/utilts/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.backgroundColor,
    this.borderRadius,
    required this.textColor,
    this.fonstSize,
  });

  final String text;
  final Color backgroundColor;
  final BorderRadius? borderRadius;

  final Color textColor;
  final double? fonstSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(12),
          ),
        ),
        child: Text(
          text,
          style: Styles.textStyle18.copyWith(
            color: textColor,
            fontWeight: FontWeight.w900,
            fontSize: fonstSize,
          ),
        ),
      ),
    );
  }
}
