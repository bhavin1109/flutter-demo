import 'package:flutter/material.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SecondDemo();
  }
}

class SecondDemo extends StatelessWidget {
  const SecondDemo({super.key});

  @override
  Widget build(BuildContext context) {
    var nameList = ["Bhavin", "Mahesh", "Nishit", "Adarsh"];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Second Demo"),
        ),
        body: Column(
          children: [
            Expanded(
              flex: 6,
              child: Container(
                color: Colors.red,
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                color: Colors.green,
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.blue,
              ),
            ),
          ],
        ),

        // ListView.builder(itemBuilder: (context, index) {
        //   return Text("${nameList[index]}");
        // },
        //   itemCount: nameList.length,
        // ),
      ),
    );
  }
}

class FirstDemo extends StatelessWidget {
  const FirstDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("New Demo"),
        ),
        body: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Text("iOS"),
                ),
                Text("Android"),
                TextButton(
                    onPressed: () {
                      print("Did tap Text Button");
                    },
                    child: Text(
                      "Text Button",
                      style: primaryStyle(),
                    )),
                ElevatedButton(
                    onPressed: () {
                      print("Did Tap Elevated Button");
                    },
                    onLongPress: () {
                      print("Did Tap Elevated Long Button");
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        foregroundColor: Colors.white),
                    child: Text(
                      "Elevated Button",
                      style: secondaryStyle(),
                    )),
                OutlinedButton(
                    onPressed: () {
                      print("Di Tap Outlined Button");
                    },
                    child: Text(
                      "Outlined Button",
                      style: primaryStyle(),
                    )),
                Container(
                  height: 100,
                  child: Image.asset(
                    "assets/images/BGMenu.png",
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

TextStyle nishitStyle({Color fontColor = Colors.red}) {
  return TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: fontColor);
}

TextStyle primaryStyle() {
  return TextStyle(fontSize: 15, fontWeight: FontWeight.bold);
}

TextStyle secondaryStyle() {
  return TextStyle(fontSize: 15, fontWeight: FontWeight.normal);
}
