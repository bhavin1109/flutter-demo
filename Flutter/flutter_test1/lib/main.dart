
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}


class Myapp1 extends StatefulWidget {
  const Myapp1({super.key});

  @override
  State<Myapp1> createState() => _Myapp1State();
}

class _Myapp1State extends State<Myapp1> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  callBack() {
    print("Call Back");
  }

  @override
  Widget build(BuildContext context) {

    var name = "Bhavin Barai";

    return MaterialApp(
      //themeMode: ThemeMode.dark,
      theme: ThemeData(primarySwatch: Colors.red),
      home: Scaffold(
        appBar: AppBar (
          title: Text("Title"),
        ),
        body: Center(
          child: Container(
            //width: 100,
            height: 200,
            color: Colors.amber,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset("assets/image/apple.png"),
                    Text("$name", style:
                    const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      ),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextButton(
                            onPressed: () {
                              name = "Bhavin 12i";
                              print("$name");
                            },
                            child: const Text("Text"),
                        ),

                        ElevatedButton(
                            onPressed: callBack,
                            child: Text("Elevated")),

                        OutlinedButton(
                          onPressed: () {
                          print("did press");
                          },
                          child: const Text("Outlined"),
                          onLongPress: () {
                            print("Long press");
                          },
                        ),
                      ],
                    ),



                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
