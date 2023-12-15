import 'package:customfont_7_flutter/utils/font_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        //primaryColor: Colors.redAccent,
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          subtitle1: TextStyle(fontSize: 20, color: Colors.greenAccent),
        ),
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Theme & Custom font"),
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(10) ,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("12i", style: TextStyle(fontFamily: "PrimaryFont", fontSize: 25),),
                ),
                Text("Bhavin", style: Theme.of(context).textTheme.headline1!.copyWith(color: Colors.redAccent),),
                Text("Barai", style: Theme.of(context).textTheme.subtitle1),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Header 1", style: h1TextStyleHeader(),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Header 2", style: h2TextStyleHeader(),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Subtitle 1", style: s1TextStyleHeader(),),
                ),
                
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Custom Theme", style: customTextStyle(textColor: Colors.green, fontWeight: FontWeight.bold, fontSize: 25.0),),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
