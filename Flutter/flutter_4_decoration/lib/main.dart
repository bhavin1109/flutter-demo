import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Decoration"),
        ),
        body: Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.black12,
            child: Center(
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  //borderRadius: BorderRadius.circular(30),

                  borderRadius: BorderRadius.only(topLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
                  //OR
                  //shape: BoxShape.rectangle,

                  border: Border.all(
                    width: 5,
                    color: Colors.redAccent,
                  ),
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 10,
                      color: Colors.redAccent,
                      spreadRadius: 2
                    )
                  ],

                ),
              ),
            ),
        ),
      ),
    );
  }

}