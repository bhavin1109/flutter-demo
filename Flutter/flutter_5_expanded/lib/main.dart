import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Expanded Widget"),
          ),
          body: Column(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  height: 100,
                  color: Colors.redAccent,
                ),
              ),
              Expanded(
                flex: 3,
                  child: Container(
                height: 100,
                color: Colors.greenAccent,
              )),
              Expanded(
                flex: 4,
                child: Container(
                  height: 100,
                  color: Colors.black,
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  height: 100,
                  color: Colors.blueAccent,
                ),
              )
            ],
          ),
      ),
    );
    ;
  }
}
