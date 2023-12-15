import 'dart:ffi';

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
          title: Text("Wrap Widget"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            //height: double.infinity,
            width: double.infinity,
            child: Wrap(
              direction: Axis.horizontal,
              spacing: 10,
              runSpacing: 10,
              alignment: WrapAlignment.center,
              children: [
                Container(
                  width: 80,
                  height: 80,
                  color: Colors.red,
                ),

                Container(
                  width: 80,
                  height: 80,
                  color: Colors.blueGrey,
                ),

                Container(
                  width: 80,
                  height: 80,
                  color: Colors.black26,
                ),

                Container(
                  width: 80,
                  height: 80,
                  color: Colors.orangeAccent,
                ),

                Container(
                  width: 80,
                  height: 80,
                  color: Colors.blue,
                ),

                Container(
                  width: 80,
                  height: 80,
                  color: Colors.green,
                ),

                Container(
                  width: 80,
                  height: 80,
                  color: Colors.pink,
                ),

                Container(
                  width: 80,
                  height: 80,
                  color: Colors.purpleAccent,
                ),

                Container(
                  width: 80,
                  height: 80,
                  color: Colors.yellow,
                ),

                Container(
                  width: 80,
                  height: 80,
                  color: Colors.purple,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
