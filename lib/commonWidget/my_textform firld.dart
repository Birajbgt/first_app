import 'package:flutter/material.dart';

class MyTextFormField extends StatelessWidget {
  const MyTextFormField(
      {super.key, required this.onChanged, required this.text});
  final ValueChanged<String> onChanged;
  final String text;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        decoration: InputDecoration(
          hintText: text,
          border: const OutlineInputBorder(),
        ),
        onChanged: onChanged,
        validator: (value) {
          if (value!.isEmpty) {
            return "please Enter $text";
          }
          return null;
        });
  }
}
