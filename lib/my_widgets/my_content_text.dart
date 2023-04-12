import 'package:flutter/material.dart';

class MyContentText extends StatelessWidget {
  final String text;
  final double size;

  const MyContentText({super.key, required this.text, required this.size});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
        color: Colors.black87,
      ),
    );
  }
}