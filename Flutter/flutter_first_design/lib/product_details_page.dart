import 'package:flutter/material.dart';
import 'package:flutter_first_design/UtilityClass/CustomTextStyle.dart';

class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ProductDetailsBottomListWidget();
  }
}


class ProductDetailsBottomListWidget extends StatelessWidget {
  const ProductDetailsBottomListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Wrap(
            children: [
              Image.asset("assets/images/profile.jpg"),
              subHeadingText(text: "Product Title"),
              bodyText(text: "K 1.49")
            ],
          );
        },
    );
  }
}
