import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

TextStyle h1TextStyleHeader() {
  return const TextStyle(fontFamily: "PrimaryFont", fontSize: 25, fontWeight: FontWeight.bold);
}

TextStyle h2TextStyleHeader() {
  return const TextStyle(fontFamily: "PrimaryFont", fontSize: 22, fontWeight: FontWeight.bold);
}

TextStyle s1TextStyleHeader() {
  return const TextStyle(fontFamily: "PrimaryFont", fontSize: 20);
}

TextStyle customTextStyle( {
  Color textColor = Colors.redAccent, fontWeight = FontWeight.normal, fontSize = 15.0,
}) {
  return TextStyle(fontWeight: fontWeight, color: textColor, fontSize: fontSize);
}