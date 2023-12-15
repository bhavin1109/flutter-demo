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
          title: const Text("ScrollView"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal, // Only for Row scroll
                child: Row(
                  children: [
                    Container (
                      margin: EdgeInsets.all(10),
                      height: 200,
                      width: 200,
                      color: Colors.amberAccent,
                    ),
                    Container (
                      margin: EdgeInsets.all(10),
                      height: 200,
                      width: 200,
                      color: Colors.redAccent,
                    ),
                    Container (
                      margin: EdgeInsets.all(10),
                      height: 200,
                      width: 200,
                      color: Colors.blue,
                    ),
                    Container (
                      margin: EdgeInsets.all(10),
                      height: 200,
                      width: 200,
                      color: Colors.greenAccent,
                    ),
                  ],
                ),
              ),
              Container (
                margin: EdgeInsets.all(10),
                height: 200,
                color: Colors.amber,
              ),
              Container (
                margin: EdgeInsets.all(10),
                height: 200,
                color: Colors.blueAccent,
              ),
              Container (
                margin: EdgeInsets.all(10),
                height: 200,
                color: Colors.green,
              ),
              Container (
                margin: EdgeInsets.all(10),
                height: 200,
                color: Colors.red,
              ),
              Container (
                margin: EdgeInsets.all(10),
                height: 200,
                color: Colors.greenAccent,
              ),
            ],
          ),
        )
      ),
    );
  }
}
