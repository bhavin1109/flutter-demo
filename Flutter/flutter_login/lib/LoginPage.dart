import 'package:flutter/material.dart';
import 'package:flutter_login/HomePage.dart';
import 'package:flutter_login/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  return runApp(MyApp());
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  var textEmailCtl = TextEditingController();
  var textPasswordCtl = TextEditingController();

  var outlinedVBorder = OutlineInputBorder(
    borderRadius: BorderRadius.only(topLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.lightBlue,
                    child: Center(child: Text("Fill Details", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),),
                  ),
                ),

                SizedBox(height: 30,),

                TextField(
                  controller: textEmailCtl,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: "Email",
                    border: outlinedVBorder,
                  ),
                ),

                SizedBox(height: 20,),

                TextField(
                  controller: textPasswordCtl,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Password",
                    border: outlinedVBorder,
                  ),
                ),

                SizedBox(height: 40,),

                ElevatedButton(onPressed: () async {

                  if (textEmailCtl.text.toString().length == 0) {
                    showAlertView(context, "Please enter email");
                    return;
                  } else if (textPasswordCtl.text.toString().length == 0) {
                    showAlertView(context, "Please enter password");
                    return;
                  } else {
                    var prefs = await SharedPreferences.getInstance();
                    prefs.setString("email", textEmailCtl.text.toString());
                    print("email=== ${prefs.get("email")}");
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage(),));
                  }

                }, child: Text("Login"),),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void showAlertView(BuildContext context, String description) {
    showDialog(context: context, builder: (BuildContext context) {
      return AlertDialog(
        title: new Text("Alert"),
        content: new Text(description),
        actions: [
          TextButton(onPressed: () {
            Navigator.of(context).pop();
          }, child: Text("Ok")),
        ],
      );
    });
  }
}


