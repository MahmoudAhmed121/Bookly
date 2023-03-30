import 'package:flutter/material.dart';

class CustomError extends StatelessWidget {
  const CustomError({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "error Mesasge",
      style: TextStyle(
        fontSize: 18,
        color: Colors.white,
      ),
    );
  }
}
