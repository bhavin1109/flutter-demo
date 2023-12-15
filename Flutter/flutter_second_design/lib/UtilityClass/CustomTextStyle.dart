import 'package:flutter/material.dart';

TextStyle customBoldStyle({double size = 14, Color color = Colors.black, bool isItalic = false}) {
  return TextStyle(fontSize: size, fontWeight: FontWeight.bold, fontStyle: (isItalic == true) ? FontStyle.italic : FontStyle.normal, color: color);
}

TextStyle customNormalStyle({double size = 14, Color color = Colors.black, bool isItalic = false}) {
  return TextStyle(fontSize: size, fontWeight: FontWeight.normal, fontStyle: (isItalic == true) ? FontStyle.italic : FontStyle.normal, color: color);
}