import 'package:flutter/material.dart';

class MyGradientButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;

  const MyGradientButton({super.key, required this.buttonText, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
        ),
        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
          const EdgeInsets.all(0),
        ),
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
        overlayColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
            if (states.contains(MaterialState.hovered)) {
              return Colors.black.withOpacity(0.04);
            } else if (states.contains(MaterialState.focused)) {
              return Colors.black.withOpacity(0.12);
            } else if (states.contains(MaterialState.pressed)) {
              return Colors.black.withOpacity(0.16);
            }
            return Colors.transparent;
          },
        ),
      ),
      onPressed: onPressed,
      child: Ink(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          gradient: LinearGradient(colors: [
            Theme.of(context).colorScheme.secondary,
            Theme.of(context).colorScheme.secondaryContainer,
          ]),
        ),
        child: Container(
          width: double.maxFinite,
          height: 50.0,
          padding: const EdgeInsets.all(10),
          constraints: const BoxConstraints(minWidth: 88.0),
          child: Center(child: Text(buttonText, textAlign: TextAlign.center, style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),)),
        ),
      )
    );
  }
}
