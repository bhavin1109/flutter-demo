import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../UtilityClass/CustomTextStyle.dart';

// class CustomButton extends StatelessWidget {
//   final VoidCallback? onPressed;
//   final String title;
//   final Color bgColor;
//   final Color textColor;
//
//   const CustomButton({super.key, required this.onPressed, required this.title, this.bgColor = Colors.black, this.textColor = Colors.white });
//
//   @override
//   Widget build(BuildContext context) {
//     return  SizedBox(
//       height: 45,
//       width: double.infinity,
//       child: CupertinoButton(
//           onPressed: onPressed,
//           color: bgColor,
//           child: subHeadingText(text: title, color: textColor, size: 15)),
//     );
//   }
// }

class CustomButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String title;
  final Color bgColor;
  final Color textColor;
  final bool isWithImage;
  final Image? image;
  final bool isPrefixImage;
  const CustomButton({super.key, required this.onPressed, required this.title, this.bgColor = Colors.black, this.textColor = Colors.white, this.image, this.isPrefixImage = true, this.isWithImage = false });

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 45,
      width: double.infinity,
      child: CupertinoButton(
          onPressed: onPressed,
          color: bgColor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (isWithImage && isPrefixImage) image ??  Image.asset("assets/images/profile.jpg"),
              if (isWithImage && isPrefixImage) const SizedBox(width: 8,),

              subHeadingText(text: title, color: textColor, size: 15),

              if (isWithImage && isPrefixImage == false) const SizedBox(width: 8,),
              if (isWithImage && isPrefixImage == false) image ??  Image.asset("assets/images/profile.jpg"),
            ],
          )),
    );
  }
}

// class CustomButton extends CupertinoButton {
//   final String title;
//   final Color textColor;
//   const CustomButton({super.key, required super.child, required super.onPressed, required this.title, this.textColor = Colors.white});
//
//
//   @override
//   // TODO: implement child
//   Widget get child => SizedBox(width: double.infinity, child: Center(child: subHeadingText(text: title, color: textColor, size: 15)));
//
//   @override
//   // TODO: implement onPressed
//   VoidCallback? get onPressed => super.onPressed;
//
//   // SizedBox(width: double.infinity, child: Center(child: subHeadingText(text: title, color: textColor, size: 15)));
// }


