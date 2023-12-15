import 'package:flutter/material.dart';
import 'package:flutter_first_design/login_page.dart';
import 'package:flutter_first_design/UtilityClass/CustomTextStyle.dart';
import 'HomePage.dart';

void main() {
  runApp(FirstPage());
}

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      debugShowCheckedModeBanner: false,
      home: const Scaffold(
        body: Padding(
          padding: EdgeInsets.only(left: 30, right: 30),
          child: Stack(
            children: [
              CenterViewWidget(),
              BottomViewWidget(title: "Get Started", icon: Icon(Icons.arrow_right, color: Colors.white, size: 30,), selected: 0,),
            ],
          ),
        ),
      ),
    );
  }
}


class CenterViewWidget extends StatelessWidget {
  const CenterViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        Image.asset("assets/images/boy.png"),

        const SizedBox(height: 15,),

        Text("Order Your Food Now!",
          textAlign: TextAlign.center,
          style: customBoldTextStyle(size: 20, isItalic: true)),

        const SizedBox(height: 10,),

        Text("Order food and get delivery withing a few minutes to your door",
          textAlign: TextAlign.center,
          style: customNormalTextStyle(color: Colors.grey),),
      ],
    );
  }
}


class BottomViewWidget extends StatelessWidget {
  final String title;
  final Icon icon;
  final int selected;

  const BottomViewWidget({super.key, required this.title, required this.icon, required this.selected});

  @override
  Widget build(BuildContext context) {
    return  Positioned(
      left: 0,
      right: 0,
      bottom: 40,
      child: Container(
        //margin: EdgeInsets.symmetric(horizontal: 0, vertical: 60),
        height: 45.0,
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(10),
        ),
        child: TextButton(
            onPressed: () {
              if (selected == 0) {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => const HomePage(),));
              }

            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(title, style: customBoldTextStyle(color: Colors.white),),
                icon,
              ],
            )
        ),
      ),
    );
  }
}
