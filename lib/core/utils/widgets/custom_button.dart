import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.txt,
    required this.bgColor,
    required this.txtColor,
    this.borderRadius,
  });

  final String txt;
  final Color bgColor;
  final Color txtColor;
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: bgColor,
          shape: RoundedRectangleBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(16)),
        ),
        child: Text(
          txt,
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.bold, color: txtColor),
        ),
      ),
    );
  }
}
