import 'package:flutter/material.dart';

import 'SplashScreen.dart';

void main() {
  return runApp(HomeScreen());
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // appBar: AppBar(
        //   title: Text("Stateful Widget"),
        // ),
        body: SplashScreen(),
      ),
    );
  }
}





