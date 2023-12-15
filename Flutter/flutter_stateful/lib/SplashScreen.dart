import 'dart:async';

import 'package:flutter/material.dart';

import 'FirstScreen.dart';
import 'main.dart';

// void main() {
//   return runApp(SplashScreen());
// }

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => FirstScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.lightBlue, child: Center(child: Text("Splash Screen")));
  }
}
