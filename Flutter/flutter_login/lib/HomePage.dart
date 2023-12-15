import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'SplashScreen.dart';

void main() {
  return runApp(HomePage());
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var prefsData = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Welcome ${prefsData}"),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: () async {
              SharedPreferences prefs = await SharedPreferences.getInstance();
              prefs.setString("email", "");
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SplashPage(),));
            }, child: Text("Logout")),
          ],
        ),
      ),
    );
  }

  void loadData () async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefsData  = prefs.get("email").toString();

    setState(() {

    });
  }
}
