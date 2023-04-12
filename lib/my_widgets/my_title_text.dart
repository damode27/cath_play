import 'package:flutter/material.dart';

class MyTitleText extends StatelessWidget {
  final String text;
  final double size;

  const MyTitleText({super.key, required this.text, required this.size});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.left,
      style: TextStyle(
        fontSize: size,
        fontWeight: FontWeight.bold,
        color: Theme.of(context).colorScheme.secondary,
      ),
    );
  }
}