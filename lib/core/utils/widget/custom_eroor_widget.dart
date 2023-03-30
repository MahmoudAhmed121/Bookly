import 'package:flutter/material.dart';

class CustomError extends StatelessWidget {
  const CustomError({super.key, required this.messageError});
  final String messageError;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        messageError,
        style: TextStyle(
          fontSize: 18,
          color: Colors.white,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
