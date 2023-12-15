import 'package:flutter/material.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    var emailTextController = TextEditingController();
    var passwordTextController = TextEditingController();

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("TextField"),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 300,
                //color: Colors.grey,
                child: TextField(
                  controller: emailTextController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: "Enter Email",
                    prefixIcon: Icon(Icons.email, color: Colors.black26,),
                    border : OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.grey,
                        )
                    ),

                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.green,
                      )
                    ),

                  ),

                ),
              ),

              Container(height: 20,),

              Container(
                width: 300,
                child: TextField(
                  controller: passwordTextController,
                  obscureText: true,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      icon: Icon(Icons.password, color: Colors.black26,),
                      onPressed: () {

                      },
                    ),
                    hintText: "Enter Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.grey,
                      )
                    )

                  ),

                ),
              ),

              Container(height: 20,),

              ElevatedButton(
                onPressed: () {
                    var email = emailTextController.text;
                    var password = passwordTextController.text;

                    print("Email===$email --- $password");
                   //emailTextController.text = password;
                },
                child: Text("Login"),),

            ],
          ),
        ),
    );
  }
}
