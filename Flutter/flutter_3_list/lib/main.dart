import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var nameList = ["A", "B", "C", "D"];
    var surnameList = ["a", "b", "c", "d"];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("List View"),
        ),
        body: Container(
          // child: ListView(
          //   scrollDirection: Axis.vertical,
          //   //reverse: true,
          //   children: const [
          //     Padding(
          //       padding: EdgeInsets.all(8.0),
          //       child: Text("1"),
          //     ),
          //     Padding(
          //       padding: EdgeInsets.all(8.0),
          //       child: Text("2"),
          //     ),
          //     Padding(
          //       padding: EdgeInsets.all(8.0),
          //       child: Text("3"),
          //     ),
          //     Padding(
          //       padding: EdgeInsets.all(8.0),
          //       child: Text("4"),
          //     ),
          //     Padding(
          //       padding: EdgeInsets.all(8.0),
          //       child: Text("5"),
          //     ),
          //   ],
          // ),
          
          // child: ListView.builder(itemBuilder: (context, index) {
          //   return Column(
          //     //mainAxisAlignment: MainAxisAlignment.start,
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     children: [
          //       Padding(
          //         padding: const EdgeInsets.all(5.0),
          //         child: Text(nameList[index], style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
          //       ),
          //
          //       Padding(
          //         padding: const EdgeInsets.all(5.0),
          //         child: Text(surnameList[index], style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),),
          //       ),
          //
          //       Divider(height: 15,),
          //     ],
          //   );
          // },
          // itemCount: nameList.length
          //   //scrollDirection: Axis.horizontal,
          // ),

          child: ListView.separated(itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(5),
                child: ListTile(
                  leading: CircleAvatar(
                    child: Text("New", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),),
                    backgroundImage: AssetImage("assets/images/image1.jpeg"),
                    radius: 30,
                  ),

                  // Container(
                  //   height: 50,
                  //   width: 50,
                  //   child: Image.asset("assets/images/image1.jpeg"),
                  //   decoration: BoxDecoration(
                  //     color: Colors.black,
                  //     //borderRadius: BorderRadius.circular(10),
                  //     border: Border.all(
                  //       width: 2,
                  //       color: Colors.red,
                  //     ),
                  //     shape: BoxShape.rectangle,
                  //     boxShadow: [
                  //       BoxShadow(
                  //         blurRadius: 10,
                  //         spreadRadius: 1
                  //
                  //       ),
                  //     ],
                  //   ),
                  // ),

                  title: Text(nameList[index]),
                  subtitle: Text(surnameList[index]),
                  trailing: Icon(Icons.add),
                ),
              );
          },
              separatorBuilder: (context, index) {
            return Divider(height: 1, thickness: 1);
          },

              itemCount: nameList.length),



          // ListView.builder(itemBuilder: (context, index) {
          //   return ListTile(
          //     leading: const CircleAvatar(
          //       child: const Text("iPhone", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 9),),
          //       backgroundImage: AssetImage("assets/images/image1.jpeg"),
          //       //backgroundColor: Colors.redAccent,
          //     ),
          //     title: Text(nameList[index]),
          //     subtitle: Text(surnameList[index]),
          //     trailing: Icon(Icons.add),
          //   );
          // },
          //   itemCount: nameList.length,
          // ),


        ),
      ),
    );
  }
}
