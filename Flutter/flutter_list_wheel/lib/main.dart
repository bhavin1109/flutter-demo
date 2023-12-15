import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  var value = ["1", "2", "3", "4", "5"];
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("List Wheel Scroll View"),
        ),
        body: ListWheelScrollView(
          itemExtent: 150,
          children: value.map((data) => Container(
            color: Colors.red,
            width: 300,
            height: 150,
            child: Center(child: Text("$data")),
          )).toList(),
          // children: [
          //   Container(height: 100, color: Colors.red,),
          //   Container(height: 100, color: Colors.red,),
          //   Container(height: 100, color: Colors.red,),
          //   Container(height: 100, color: Colors.red,),
          //   Container(height: 100, color: Colors.red,),
          //   Container(height: 100, color: Colors.red,),
          // ],
        ),
      ),
    );
  }
}

