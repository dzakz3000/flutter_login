import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextfieldcalculator extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  const CustomTextfieldcalculator({
    super.key,
    required this.hintText,
    required this.controller
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: TextField(
        controller: controller,
        keyboardType: TextInputType.number,
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        decoration: InputDecoration(
          hintText: hintText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
