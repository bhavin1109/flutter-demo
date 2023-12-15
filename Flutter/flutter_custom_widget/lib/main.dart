import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: Colors.black26,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyButton(btnName: "New 1", btnIcon: Icon(Icons.add), btnTextStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold), callback: () {
                  print("Call back!!");
                },),

                Container(height: 20,),

                MyButton(btnName: "New 2", btnTextStyle: TextStyle(fontSize: 15), callback: () {
                  print("Call back!!");
                },),

                Container(height: 20,),

                MyText(textTitle: "Header", textStyle: headerStyle(textColor: Colors.red),),

                Container(height: 20,),

                MyText(textTitle: "Body", textStyle: bodyText(),),

                // MyButton(btnName: , btnTextStyle: TextStyle(fontSize: 15), callback: () {
                //   print("Call back!!");
                // },),
              ],
            ),
          ),
        ),
      ),
    );
  }
}



class MyButton extends StatelessWidget {

  final String btnName;
  final Icon? btnIcon;
  final Colors? btnColor;
  final TextStyle? btnTextStyle;
  final VoidCallback? callback;

  MyButton({
    required this.btnName,
    this.btnIcon,
    this.btnColor,
    this.btnTextStyle,
    this.callback
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          callback!();
        },
        child: btnIcon != null ?
        Row(
          children: [
            btnIcon!,
            Text(btnName, style: btnTextStyle,)
          ],
        ) : Text(btnName, style: btnTextStyle),);
  }
}


class MyText extends StatelessWidget {

  final String textTitle;
  final TextStyle? textStyle;
  
  MyText({required this.textTitle, this.textStyle});
  
    @override
  Widget build(BuildContext context) {
    return Text("$textTitle", style: textStyle,);
  }
}


TextStyle bodyText({Color textColor = Colors.black, FontWeight fontWight = FontWeight.normal}) {
  return TextStyle(fontSize: 20, fontWeight: fontWight, color: textColor);
}


TextStyle headerStyle({Color textColor = Colors.black}) {
  return TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: textColor);
}
