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
          title: Text('Header'),
        ),
        body: Center(
          child: Container(
            // width: 300,
            // height: 300,
            //color: Colors.black,-
            child: Center(
                // child: ElevatedButton(
                //   onPressed: () {
                //   print("Did tap Text button");
                // }, onLongPress: () {
                //     print("Did long press Text button");
                //   },
                //   child: const Text("My name is Bhavin", style: TextStyle(
                //     fontSize: 15,
                //     fontWeight: FontWeight.bold,
                //     color: Colors.white
                // ),
                // ),
                // )

                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start ,
              children: [
                Container(
                    width: 100,
                    height: 100,
                    child: Image.asset("assets/images/iphone.jpg")),

                InkWell(
                    onTap: () { print("Did tap InkWell Container"); },
                    onDoubleTap: () { print("Did double tap InkWell Container"); },
                    onLongPress: () { print("Did long tap InkWell Container"); },
                    child: Container(
                        height: 100,
                        color: Colors.blueAccent,
                        child: Center(
                          child: InkWell(
                             onTap: () { print("Did tap InkWell Text"); },
                             child: const Text("The Rewarding .", style:  TextStyle(backgroundColor: Colors.amberAccent),)),
                        ))),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextButton(
                        onPressed: () {
                          print("Did tap Text button");
                        },
                        child: Text("Text")),
                    ElevatedButton(
                      onPressed: () {
                        print("Did tap ElevatedButton");
                      },
                      onLongPress: () {
                        print("Did long press ElevatedButton");
                      },
                      child: const Text(
                        "Elevated",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    OutlinedButton(
                        onPressed: () {
                          print("Did tap OutlinedButton");
                        },
                        child: Text("OutLined")),
                  ],
                )
              ],
            )),
          ),
        ),
      ),
    );
  }
}
