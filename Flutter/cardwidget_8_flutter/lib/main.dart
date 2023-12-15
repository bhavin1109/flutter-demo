import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
 // const MyApp({Key? key}) : super(key: key);

  var emailTextField = TextEditingController();
  var passwordTextField = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Card Widget and TextField"),
        ),
        body: Center(
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Card(
                elevation: 5,
                shadowColor: Colors.blueAccent,
                child: Container(
                  margin: const EdgeInsets.all(10),
                  child: Text("Item 1")
                ),
              ),

              Card(
                elevation: 5,
                shadowColor: Colors.blueAccent,
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Text("Item 2"),
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: 20),
                width: 300,
                  child: Column(

                    children: [
                      TextField(
                        controller: emailTextField,
                        decoration: InputDecoration(
                          hintText: "Enter Email",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                              color: Colors.orange,
                              width: 2,
                            ),
                          ),

                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide:  BorderSide(
                              color: Colors.greenAccent,
                              width: 2,
                            ),
                          ),

                          disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                              color: Colors.redAccent,
                              width: 2,
                            ),
                          ),

                          suffixText: "Email",
                          // suffixIcon: IconButton(
                          //   icon: Icon(Icons.email, color: Colors.orange,),
                          //   onPressed: (){
                          //
                          //   },
                          // ),
                          prefixIcon: Icon(Icons.email, color: Colors.orange,),

                        ),
                      ),

                      Container(height: 20,),

                      TextField(
                        controller: passwordTextField,
                        obscureText: true,
                        //obscuringCharacter: "*",
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15)
                            )
                        ),
                      ),

                      Container(height: 20,),

                      TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(

                            ),
                          ),
                        ),
                      ),
                      
                      ElevatedButton(onPressed: () {
                        String email = emailTextField.text.toString();
                        String password = passwordTextField.text.toString();
                          print("Log== $email--$password");

                      }, child: Text("Login"))
                    ],
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
