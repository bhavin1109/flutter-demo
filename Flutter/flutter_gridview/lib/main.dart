import 'package:flutter/material.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var colorList = [Colors.red, Colors.grey, Colors.black, Colors.orangeAccent, Colors.green, Colors.cyan];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Grid View"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: GridView.builder(
              itemCount: colorList.length,
              gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                 crossAxisCount: 3,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10),

              // gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              //   maxCrossAxisExtent: 150,
              //   crossAxisSpacing: 10,
              //   mainAxisSpacing: 10,
              // ),
              itemBuilder: (context, index) {
                return Container(color: colorList[index]);
              }),
        ),

        //MARK: Size wise boxes per row
        // Padding(
        //   padding: const EdgeInsets.all(10.0),
        //   child: GridView.extent(
        //     maxCrossAxisExtent: 150,
        //     mainAxisSpacing: 10,
        //     crossAxisSpacing: 10,
        //     children: [
        //       Container(color: colorList[0]),
        //       Container(color: colorList[1]),
        //       Container(color: colorList[2]),
        //       Container(color: colorList[3]),
        //       Container(color: colorList[4]),
        //       Container(color: colorList[5]),
        //     ],
        //   ),
        // ),

        //MARK: Boxes in row as per count
        // Padding(
        //   padding: const EdgeInsets.all(10.0),
        //   child: GridView.count(crossAxisCount: 3,
        //     mainAxisSpacing: 10,
        //     crossAxisSpacing: 10,
        //     children: [
        //       Container(color: colorList[0]),
        //       Container(color: colorList[1]),
        //       Container(color: colorList[2]),
        //       Container(color: colorList[3]),
        //       Container(color: colorList[4]),
        //       Container(color: colorList[5]),
        //     ],
        //   ),
        // ),
      ),
    );
  }
}
