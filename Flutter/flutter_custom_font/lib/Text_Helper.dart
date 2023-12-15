import 'package:flutter/material.dart';


TextStyle JokerBoldStyle() {
  return const TextStyle(fontFamily: "Joker", fontWeight: FontWeight.bold, fontSize: 20);
}

TextStyle JokerRegularStyle() {
  return const TextStyle(fontFamily: "Joker", fontWeight: FontWeight.normal, fontSize: 20);
}


TextStyle DynamicStyle({Color textColor = Colors.red}) {
  return TextStyle(fontWeight: FontWeight.normal, fontSize: 15, color: textColor);
}