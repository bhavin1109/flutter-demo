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
          title: Text("Sized Box & Rich Text"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: 40,
                  minWidth: 100,
                  maxHeight: 120,
                  maxWidth: 300,
                ),
                child: SizedBox.expand(
                  // width: 100,
                  // height: 45,
                  child: OutlinedButton(onPressed: () {}, child: Text("Outlined Button"),),
                ),
              ),

              SizedBox(height: 20,),

              RichText(text: TextSpan(
                style: TextStyle(fontWeight: FontWeight.w300, fontSize: 20, color: Colors.blueGrey),
                children: [
                  TextSpan(text: "Bhavin "),
                  TextSpan(text: "Barai ", style: TextStyle(color: Colors.pink, fontWeight: FontWeight.bold)),
                  TextSpan(text: "12i", style: TextStyle(color: Colors.orange)),
                ]
              )),

              SizedBox(height: 20,),

              SizedBox.square(
                dimension: 150,
                child: ElevatedButton(onPressed: () {}, child: Text("Elevated Button"),),
              ),
              
              SizedBox(height: 20,),
              
              Icon(Icons.back_hand, size: 50,),

              SizedBox(height: 20,),

              IconButton(onPressed: () { print("Icon button"); }, icon: Icon(Icons.bluetooth_connected_sharp, size: 50,),),

            ],
          ),
        ),
      ),
    );
  }
}
