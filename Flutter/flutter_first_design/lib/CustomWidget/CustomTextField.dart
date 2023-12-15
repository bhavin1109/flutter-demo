import 'package:flutter/material.dart';
import '../UtilityClass/CustomTextStyle.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
  {super.key,
    required this.placeholder,
    required this.controller,
    this.keyboardType = TextInputType.text,
    this.isSecureText = false,
    this.borderColor = Colors.grey,
    this.selectedBorderColor = Colors.grey,
    this.fontSize = 12,
    this.borderRadius = 5});

  final String placeholder;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final bool isSecureText;
  final Color borderColor;
  final Color selectedBorderColor;
  final double fontSize;
  final double borderRadius;

@override
Widget build(BuildContext context) {
  return SizedBox(
    height: 40,
    child: TextField(
      style: customNormalTextStyle(size: fontSize),
      controller: controller,
      keyboardType: keyboardType,
      obscureText: isSecureText,
      decoration: InputDecoration(
        hintText: placeholder,
        hintStyle: customNormalTextStyle(size: fontSize, color: Colors.grey),
        contentPadding: const EdgeInsets.only(top: 10, left: 10),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            borderSide: BorderSide(
              color: borderColor,
            )
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            borderSide: BorderSide(
              color: selectedBorderColor,
            )
        ),
      ),
    ),
  );
}}



