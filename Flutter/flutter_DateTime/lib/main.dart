import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter/cupertino.dart';


void main() {
  return runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {

    var dateTime = DateTime.now();

    return MaterialApp(
      localizationsDelegates: [
        DefaultMaterialLocalizations.delegate
      ],
      home: Scaffold(
        appBar: AppBar(
          title: Text("Date & Time"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Text(
                  "Date: ${dateTime.year}/${dateTime.month}/${dateTime.day} ${dateTime.hour}:${dateTime.minute}:${dateTime.second}",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Container(
                height: 20,
              ),
              Text("New Date: ${DateFormat("yMMMd").format(dateTime)}",
                style: TextStyle(fontSize: 20),
              ),
              Container(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    print("Did Tap");

                    setState(() {

                    });
                  },
                  child: Text("Change Time ")
              ),

              Container(
                height: 20,
              ),

              Text("Select Date"),

              Container(
                height: 250,
                child: CupertinoDatePicker(
                  initialDateTime: DateTime.now(),
                  onDateTimeChanged: (DateTime newDateTime) {
                    print("Date changed: ${DateFormat("yMMMd").format(newDateTime)}");
                  },
                ),
              ),

              ElevatedButton(onPressed: () async {
                    DateTime? datePicker = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2022),
                      lastDate: DateTime(2024),
                    );

                    if (datePicker != null) {
                      print("Date: ${datePicker.day}");
                    }
                  },
                  child: Text("Select Date")
              ),
            ],
          ),
        ),
      ),
    );
  }
}
