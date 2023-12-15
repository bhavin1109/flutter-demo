import 'package:flutter/material.dart';

TextStyle customBoldTextStyle({bool isItalic = false, double size = 14, Color color = Colors.black}) {
  return TextStyle(fontWeight: FontWeight.bold, fontSize: size, fontStyle: (isItalic == true) ? FontStyle.italic : FontStyle.normal, color: color);
}

TextStyle customNormalTextStyle({bool isItalic = false, double size = 14, Color color = Colors.black}) {
  return TextStyle(fontWeight: FontWeight.normal, fontSize: size, fontStyle: (isItalic == true) ? FontStyle.italic : FontStyle.normal, color: color);
}


Text navigationText({required String text, bool isItalic = false, double size = 18, Color color = Colors.white,}) {
  return Text(text, style: customBoldTextStyle(color: color, size: size, isItalic: isItalic));
}

Text headingText({required String text, bool isItalic = false, double size = 16, Color color = Colors.black,}) {
  return Text(text, style: customBoldTextStyle(color: color, size: size, isItalic: isItalic));
}

Text subHeadingText({required String text, bool isItalic = false, double size = 14, Color color = Colors.black,}) {
  return Text(text, style: customBoldTextStyle(color: color, size: size, isItalic: isItalic));
}

Text bodyText({required String text, bool isItalic = false, double size = 13, Color color = Colors.black,}) {
  return Text(text, style: customNormalTextStyle(color: color, size: size, isItalic: isItalic));
}

