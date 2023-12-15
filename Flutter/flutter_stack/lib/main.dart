import 'package:flutter/material.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Stack"),
        ),

        body: Container(
          width: 400,
          height: 400,
          child: Stack(
            children: [
              Container(
                width: 300,
                height: 300,
                color: Colors.brown,
              ),

              Positioned(
                left: 20,
                top: 20,
                // right: 15,
                // bottom: 15,
                child: Container(
                  width: 300,
                  height: 300,
                  color: Colors.cyan,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
