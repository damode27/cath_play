import 'package:flutter/material.dart';

class MyTextFormField extends StatelessWidget {
  final String labelText;
  //final IconData icon;
  final TextEditingController controller;
  final bool isPassword;

  const MyTextFormField({
    super.key,
    required this.labelText,
    //required this.icon,
    required this.controller,
    required this.isPassword
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: TextFormField(
        autofocus: true,
        controller: controller,
        enableSuggestions: !isPassword,
        autocorrect: !isPassword,
        cursorColor: Theme.of(context).colorScheme.secondary,
        textAlignVertical: TextAlignVertical.center,
        style: TextStyle(color: Theme.of(context).colorScheme.secondary),
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white54,
            contentPadding: const EdgeInsets.only(left: 10, right: 10),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: const BorderSide(width: 0, style: BorderStyle.none)
            ),
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Introduce este dato porfavor';
          }
          return null;
        },
      ),
    );
  }
}