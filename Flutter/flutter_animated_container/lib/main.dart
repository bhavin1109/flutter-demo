import 'package:flutter/material.dart';

import 'FirstPage.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}


class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var width = 100.0;
  var height = 200.0;
  var animate = false;
  var mOpecity = 1.0;

  Decoration decor = BoxDecoration(
    borderRadius: BorderRadius.circular(20),
    color: Colors.black
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Animated Container"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => FirstPage(),));
                },
                child: Hero(
                    tag: "backgroud",
                    child: Container(
                      width: 300,
                      height: 100,
                      color: Colors.green,
                    ),
                ),
              ),

              SizedBox(height: 20,),
              
              AnimatedContainer(
                duration: Duration(seconds: 2),
                curve: Curves.linear,
                width: width,
                height: height,
                decoration: decor,
              ),

              SizedBox(height: 20,),

              ElevatedButton(onPressed: () {
                setState(() {
                  if (animate) {
                    width = 200.0;
                    height = 100.0;
                    decor = BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey
                    );
                    animate = false;
                  } else {
                    width = 100.0;
                    height = 200.0;
                    decor = BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.black
                    );
                    animate = true;
                  }

                });
              }, child: Text("Animate")),

              SizedBox(height: 20,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AnimatedOpacity(
                      opacity: mOpecity,
                      duration: Duration(seconds: 2),
                      child: Container(
                        width: 100,
                        height: 100,
                        color: Colors.pink,
                      ),
                  ),

                  SizedBox(width: 30,),

                  AnimatedCrossFade(
                    firstChild: Container(width: 100, height: 100, color: Colors.green,),
                    secondChild: Container(width: 100, height: 100, color: Colors.red,),
                    crossFadeState: animate ? CrossFadeState.showFirst : CrossFadeState.showSecond,
                    duration: Duration(seconds: 2),
                    //sizeCurve: Curves.fastEaseInToSlowEaseOut,
                    firstCurve: Curves.fastEaseInToSlowEaseOut,
                    secondCurve: Curves.fastLinearToSlowEaseIn,
                  ),
                ],
              ),


              SizedBox(height: 20,),

              ElevatedButton(onPressed: () {
               setState(() {
                 if (animate) {
                   mOpecity = 0.0;
                   animate = false;
                 }
                 else {
                   mOpecity = 1.0;
                   animate = true;
                 }
               });
              }, child: Text("Opecity tap")),


              
              SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
  }
}
