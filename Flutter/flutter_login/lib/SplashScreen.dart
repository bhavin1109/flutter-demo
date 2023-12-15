import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_login/HomePage.dart';
import 'package:flutter_login/LoginPage.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const SplashPage());
}

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  // This widget is the root of your application.

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getPrefData();


  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          // height: double.infinity,
          // width: double.infinity,
          color: Colors.lightBlue,
          child: Center(child: Text("Splash Screen", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Colors.white),)),
        ),
      ),
    );
  }

  void getPrefData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var email = prefs.getString('email').toString();
    print("email==1= $email=== ,${PreferenceData().getValue("email")}");

    Timer(Duration(seconds: 3), () async {
      if (email.length == 0) {
        print("Login Page");
         Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage(),));
      } else {
        print("Home Page");
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage(),));
      }
    });
  }
}


class PreferenceData {
  // saveValue(String key, var value) async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   prefs.setString(key, value);
  // }

  getValue(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    //Return String
    String? stringValue = prefs.getString('key');
    return stringValue ?? "";
  }

  getStringValuesEmail() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    //Return String
    bool checkedValue = prefs.containsKey("email");
    print("checkedValue=== $checkedValue === ${ prefs.getString('email')}");
    if (checkedValue == false) {
      return "";
    } else {
      return prefs.getString('email').toString();
    }
  }
}