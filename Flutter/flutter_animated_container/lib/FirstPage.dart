import 'package:flutter/material.dart';

void main() {
  return runApp(FirstPage());
}

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Detail Page"),

        ),
        body: Hero(
          tag: "backgroud",
          child: Container(
            height: 400,
            color: Colors.green,
          ),
        ),
      ),
    );
  }
}
