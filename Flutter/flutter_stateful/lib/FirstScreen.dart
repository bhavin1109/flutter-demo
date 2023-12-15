import 'package:flutter/material.dart';
import 'package:flutter_stateful/SecondScreen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});
  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  var text1Controller = TextEditingController();
  var text2Controller = TextEditingController();
  var counter = 0;
  var newValue = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateful Widget"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Counter: $counter"),

            SizedBox(height: 20,),

            ElevatedButton(onPressed: () {
              setState(() {
                counter++;
              });
            }, child: Text("Counter Plus")),

            SizedBox(height: 30,),

            Container(
              width: 300,
              child: Column(
                children: [
                  TextField(
                    controller: text1Controller,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        hintText: "Number 1",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              color: Colors.grey
                          ),
                        ),

                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Colors.black,
                            )
                        )
                    ),
                  ),

                  SizedBox(height: 20,),

                  TextField(
                    controller: text2Controller,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        hintText: "Number 2",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              color: Colors.grey
                          ),
                        ),

                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                                color: Colors.black
                            )
                        )
                    ),
                  )
                ],
              ),
            ),

            SizedBox(height: 20,),

            Text("New Value: $newValue"),

            SizedBox(height: 10,),

            ElevatedButton(onPressed: () {
              var value1 = int.parse(text1Controller.text.toString());
              var value2 = int.parse(text2Controller.text.toString());
              newValue = "${value1 + value2}";

              setState(() {

              });

            }, child: Text("Add")),

            SizedBox(height: 10,),

            ElevatedButton(onPressed: () {
              var value1 = int.parse(text1Controller.text.toString());
              var value2 = int.parse(text2Controller.text.toString());
              newValue = "${value1 / value2}";

              setState(() {

              });

            }, child: Text("Div")),

            SizedBox(height: 10,),

            ElevatedButton(onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecondScreen(newValue),
                  )
              );

            }, child: Text("Next"))
          ],
        ),
      ),
    );
  }
}
