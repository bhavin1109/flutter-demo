import 'package:flutter/material.dart';
import 'package:flutter_first_design/UtilityClass/CustomTextStyle.dart';
import 'package:flutter_first_design/product_details_page.dart';

import 'CustomWidget/CustomButton.dart';

class OrderDetailsPage extends StatelessWidget {
  const OrderDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: navigationText(text: "Order No #1182"),
      ),
      body: SafeArea(
        child: Container(
          color: Colors.grey.shade200,
          child: Padding(
            padding: EdgeInsets.only(top: 12, left: 12, right: 12),
            child: Column(
              children: <Widget>[
                Expanded(child: getOrderDetailsTopWidget()),
                const SizedBox(height: 10,),
                getOrderDetailsCenterWidget(),
                getOrderDetailsBottomWidget(context),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


Widget getOrderDetailsTopWidget() {
  return Container(
    color: Colors.white,
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: ListView.builder(
        //scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset("assets/images/profile.jpg", width: 110, height: 130, fit: BoxFit.fitHeight,),
                const SizedBox(width: 10,),
                Wrap(
                  crossAxisAlignment: WrapCrossAlignment.start,
                  direction: Axis.vertical,
                  spacing: 7,
                  children: [
                    subHeadingText(text: "MI-PIPO4 jouru ossum"),
                    bodyText(text: "Default title"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        bodyText(text: "K 19,000.00 X 24"),
                        bodyText(text: "K 4,56,000.00")
                      ],
                    )
                  ],
                )
              ],
            ),
          );
        },
      ),
    ),
  );
}

Widget getOrderDetailsCenterWidget() {
  return Column(
    children: [
      Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Wrap(
            runSpacing: 15,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Wrap(
                    direction: Axis.vertical,
                    spacing: 10,
                    children: [
                      bodyText(text: "Order Total"),
                      bodyText(text: "Shopping"),
                      bodyText(text: "Discount"),
                      bodyText(text: "Applied Coupan"),
                    ],
                  ),

                  Wrap(
                    runAlignment: WrapAlignment.end,
                    crossAxisAlignment: WrapCrossAlignment.end,
                    direction: Axis.vertical,
                    spacing: 10,
                    children: [
                      Align(child: bodyText(text: "K 9,30,000.00",)),
                      bodyText(text: "K 0.00"),
                      bodyText(text: "K 0.00"),
                      bodyText(text: "- K 0.00"),
                    ],
                  )
                ],
              ),

              Container(color: Colors.grey, height: 0.5,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  headingText(text: "Total Paid"),
                  headingText(text: "K 9,30,000.00"),
                ],
              ),
            ],
          ),
        ),
      ),
      Image.asset("assets/images/Subtract.png"),
    ],
  );
}

Widget getOrderDetailsBottomWidget(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 5),
    child: Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Wrap(
          runSpacing: 10,
          children: [
            Row(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        bodyText(text: "Order Status.", color: Colors.grey),
                        const SizedBox(height: 5),
                        bodyText(text: "Delivered", color: Colors.orange, size: 14),

                        const SizedBox(height: 10),
                        Container(color: Colors.grey.shade200, height: 1,),
                        const SizedBox(height: 10),

                        headingText(text: "Shipping info"),
                        const SizedBox(height: 7),
                        subHeadingText(text: "Testing Shop"),
                        const SizedBox(height: 7),
                        bodyText(text: "Myanmar, Myanmar, Myanmar", color: Colors.grey),

                      ],
                    ),
                  ),

                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        bodyText(text: "Order On", color: Colors.grey),
                        const SizedBox(height: 5),
                        bodyText(text: "10/09/2023 At 1:33 PM", size: 14),

                        const SizedBox(height: 10),
                        Container(color: Colors.grey.shade200, height: 1,),
                        const SizedBox(height: 10),

                        headingText(text: "Billing Info"),
                        const SizedBox(height: 7),
                        subHeadingText(text: "Testing Shop"),
                        const SizedBox(height: 7),
                        bodyText(text: "K 93000", color: Colors.grey),
                      ],
                    ),
                  ),
                ]
            ),

            Container(color: Colors.grey.shade200, height: 1,),

            CustomButton(
              onPressed: () {
                //print("Did Tap");
                Navigator.push(context, MaterialPageRoute(builder: (context) => const ProductDetailsPage(),));
              },
              title: "Order Status", image: Image.asset("assets/images/Water.png",), isPrefixImage: true, isWithImage: true,
            ),

          ],
        ),
      ),
    ),
  );
}