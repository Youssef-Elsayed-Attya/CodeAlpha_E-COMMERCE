import 'package:flutter/material.dart';

class MyTextForm extends StatelessWidget {
  const MyTextForm({
    super.key,
    required this.controller,
    required this.hintText,
    required this.fillColor,
    required this.hintStyle,
  });

  final TextEditingController controller;
  final String hintText;
  final Color fillColor;
  final TextStyle hintStyle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
            border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(20)),
            hintText: hintText,
            hintStyle: hintStyle,
            fillColor: fillColor,
            filled: true),
      ),
    );
  }
}
