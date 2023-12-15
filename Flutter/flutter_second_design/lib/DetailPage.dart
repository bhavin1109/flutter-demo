import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_second_design/UtilityClass/CustomTextStyle.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          //runSpacing: 20,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50,
              child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
              },
                icon: const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Icon(Icons.arrow_back_ios),
                ),
              ),
            ),

            CarouselWidget(),

            const SizedBox(height: 30,),

            BodyWidget(),

            Expanded(child: BotttomViewWidget()),
          ],
        ),
      ),
    );
  }
}

class CarouselWidget extends StatelessWidget {
  const CarouselWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        items: [
          Image.asset("assets/images/slide1.png"),
          Image.asset("assets/images/slide2.png"),
        ],
        options: CarouselOptions(
          height: 300,
          aspectRatio: 16/9,
          initialPage: 0,
          autoPlay: true,
          viewportFraction: 1.0,
        ),
    );
  }
}

class BodyWidget extends StatelessWidget {
  const BodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: SizedBox(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Mediterranean", style: customBoldStyle(size: 13),),
            Row(
              children: [
                Text("Chickpea Salad", style: customBoldStyle(size: 18),)
              ],
            ),
            const SizedBox(height: 10),

            Text("Lorem losum is simoly dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever since the 1500s", style: customNormalStyle(),),

            const SizedBox(height: 15),

            Row(
              children: [
                Text("Delivery Time", style: customNormalStyle(),),
                const SizedBox(width: 30,),
                const Icon(Icons.timelapse),
                const SizedBox(width: 7,),
                Text("30 Min", style: customNormalStyle(),)
              ],
            ),
          ],
        ),
      ),
    );
  }
}


class BotttomViewWidget extends StatelessWidget {
  const BotttomViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, bottom: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Total Price", style: customBoldStyle(size: 13),),
              Text("28.55", style: customBoldStyle(size: 18),),
            ],
          ),
          const SizedBox(width: 30,),

          const SizedBox(
            height: 50,
              child: Icon(Icons.favorite
              )
          ),

          const SizedBox(width: 7,),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              padding: EdgeInsets.only(left: 15, right: 15),

            ),
            onPressed: () {

            },
            child: Row(
              children: [
                Text("Add to cart", style: customBoldStyle(color: Colors.white),),
                const SizedBox(width: 5),
                Icon(Icons.shopping_cart, color: Colors.white,),
              ],
            ),),
        ],
      ),
    );
  }
}


