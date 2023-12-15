import 'package:flutter/material.dart';
import 'package:flutter_first_design/UtilityClass/CustomTextStyle.dart';

import 'main.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // appBar: AppBar(
      //   title: Text("Cheese Pizza"),
      // ),
      body: Padding(
        padding: EdgeInsets.only(top: 60, left: 15, right: 15),
        child: Stack(
          children: [
            DetailsTopWidget(),

            SizedBox(height: 20),

            BottomViewWidget(title: "Add to Cart", icon: Icon(Icons.add, color: Colors.white, size: 20,), selected: 1,),
          ],
        )
      ),
    );
  }
}

class DetailsTopWidget extends StatelessWidget {
  const DetailsTopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        const HeaderViewWidget(),

        const SizedBox(height: 10),

        Text("Mized Pizza with beef, chilli and cheese", style: customNormalTextStyle(size: 15, color: Colors.grey),),

        const SizedBox(height: 10),

        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.star, color: Colors.deepOrange,),
            SizedBox(width: 5),
            Text("4.7"),
          ],
        ),

        const SizedBox(height: 10),

        Image.asset("assets/images/Pizza.png"),

        const SizedBox(height: 20),

        const PartitionWidget(),
      ],
    );
  }
}



class HeaderViewWidget extends StatelessWidget {
  const HeaderViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(onPressed: () {
          Navigator.pop(context);
        }, icon: const Icon(Icons.arrow_back)),
        Text("Cheese Pizza", style: customBoldTextStyle(size: 22),),
        IconButton(onPressed: () {}, icon: const Icon(Icons.favorite, color: Colors.deepOrange,)),
      ],
    );
  }
}

class PartitionWidget extends StatelessWidget {
  const PartitionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            Text("Calories", style: customBoldTextStyle(color: Colors.grey),),
            const SizedBox(height: 5,),
            Text("120", style: customBoldTextStyle(),),
          ],
        ),

        Container(
          width: 1.5,
          height: 20,
          color: Colors.grey,
        ),

        Column(
          children: [
            Text("Volume", style: customBoldTextStyle(color: Colors.grey),),
            const SizedBox(height: 5,),
            Text("10 inch", style: customBoldTextStyle(),),
          ],
        ),

        Container(
          width: 1.5,
          height: 20,
          color: Colors.grey,
        ),

        Column(
          children: [
            Text("Distance", style: customBoldTextStyle(color: Colors.grey),),
            const SizedBox(height: 5,),
            Text("1 KM", style: customBoldTextStyle(),),
          ],
        ),
      ],
    );
  }
}
