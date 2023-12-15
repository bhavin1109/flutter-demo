import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_first_design/CustomWidget/CustomButton.dart';
import 'package:flutter_first_design/OrderDetailsPage.dart';
import 'package:flutter_first_design/UtilityClass/CustomTextStyle.dart';

class OrderListPage extends StatelessWidget {
  const OrderListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: navigationText(text: "Orders")
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Card(
                  elevation: 1,
                  shadowColor: Colors.grey,
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
                                  bodyText(text: "Order No.", color: Colors.grey),
                                  const SizedBox(height: 5),
                                  bodyText(text: "#1118"),

                                  const SizedBox(height: 10),

                                  bodyText(text: "Total", color: Colors.grey),
                                  const SizedBox(height: 5),
                                  bodyText(text: "3 items"),

                                  const SizedBox(height: 10),

                                  bodyText(text: "Order Date", color: Colors.grey),
                                  const SizedBox(height: 5),
                                  bodyText(text: "10/09/2023"),
                                ],
                              ),
                            ),

                            Expanded(
                              flex: 1,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  bodyText(text: "Order Status", color: Colors.grey),
                                  const SizedBox(height: 5),
                                  bodyText(text: "Order is delelivered to the owner"),

                                  const SizedBox(height: 10),

                                  bodyText(text: "Bill Amount", color: Colors.grey),
                                  const SizedBox(height: 5),
                                  bodyText(text: "K 93000"),
                                ],
                              ),
                            ),
                          ]
                        ),

                        Container(color: Colors.grey.shade200, height: 1,),

                        CustomButton(
                          onPressed: () {
                            //print("Did Tap");
                            Navigator.push(context, MaterialPageRoute(builder: (context) => OrderDetailsPage(),));
                          },
                          title: "View Details", image: Image.asset("assets/images/Water.png",), isPrefixImage: false, isWithImage: true,
                          ),

                      ],
                    ),
                  ),
                ),
              );
            },
        ),
      ),
    );
  }
}
