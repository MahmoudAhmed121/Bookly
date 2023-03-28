import 'package:flutter/material.dart';

class CustomButoom extends StatelessWidget {
  const CustomButoom({
    required this.text,
    super.key,
    required this.backgroundColor,
    required this.TextColer,
    this.borderRadius,
     this.fontsize,
  });
  final Color backgroundColor;
  final Color TextColer;
  final BorderRadius? borderRadius;
  final String text;
  final double? fontsize;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(15),
            )),
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(
            fontSize: fontsize,
            color: TextColer,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}