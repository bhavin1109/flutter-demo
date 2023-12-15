
import 'package:flutter/material.dart';

import 'Text_Helper.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
        textTheme: TextTheme(
          displayLarge: JokerBoldStyle(),
          displayMedium: JokerRegularStyle(),
          displaySmall: TextStyle(fontSize: 15, color: Colors.red),

        ),
      ),
      home: Container(
        child: const MyHomePage()
      ),
    );
  }
}


class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold (
      appBar: AppBar(
        title: Text("Custom font"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Card(
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text("Bhavin", style: JokerRegularStyle()),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("Barai", style: JokerRegularStyle()),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("12i", style: Theme.of(context).textTheme.displayLarge),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("BJBarai", style: Theme.of(context).textTheme.displaySmall!.copyWith(color: Colors.cyan),),
              ),
              Padding(padding:
                const EdgeInsets.all(10.0),
                child: Text("Bhavin", style: DynamicStyle(textColor: Colors.green),),
              ),

              // Card(
              //   elevation: 15,
              //  child:
                Container(
                  height: 100,
                  decoration: BoxDecoration(
                    //color: Colors.red,
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(
                      width: 2,
                    ),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 10,
                        spreadRadius: 3,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                  //child: Image.asset("assets/images/new.jpg", fit: BoxFit.fill),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset("assets/images/new.jpg", fit: BoxFit.cover,),
                  ),
                ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}




