import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  //const SecondScreen({super.key});
  var textFormFirstScreen;

  SecondScreen(this.textFormFirstScreen);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Next Page"),
      ),
      body: Center(
        child: Container(
          // height: 300,
          // width: 300,
          //color: Colors.grey,
          child: Text("Result: $textFormFirstScreen"),
        ),
      ),
    );
  }
}
