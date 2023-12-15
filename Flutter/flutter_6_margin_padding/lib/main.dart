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
          title: const Text("Padding and Margin"),
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.all(15),
                color: Colors.green.shade100,
                child: const Padding(
                  padding: EdgeInsets.all(5), //.only(left: 10, top: 10),
                  child: Text("Title", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(15),
                color: Colors.green.shade100,
                child: const Padding(
                  padding: EdgeInsets.all(5), //.only(left: 10, top: 10),
                  child: Text("Hey,  Hello, How are you? Hey,  Hello, How are you? Hey,  Hello, How are you? Hey,  Hello, How are you? Hey,  Hello, How are you? Hey,  Hello, How are you? ", style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
