import 'package:flutter/material.dart';
import 'package:flutter_first_design/DetailsPage.dart';
import 'UtilityClass/CustomTextStyle.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Padding(
          padding: const EdgeInsets.only(top: 60, bottom: 20),
          child:SingleChildScrollView(
            child: Column(
              children: [
                const LocationViewWidget(),

                const SizedBox(height: 10),

                const SearchViewWidget(),

                const SizedBox(height: 20),

                const ImageBannerWidget(),

                const SizedBox(height: 20),

                const SubHeaderWidget(title: "Categories", subtitle: "View All",),

                const SizedBox(height: 5),

                CategoryListWidget(),

                const SizedBox(height: 20),

                const SubHeaderWidget(title: "Popular", subtitle: "View All",),

                const SizedBox(height: 5),

                PopularListWidget()
              ],
            ),
          ),
        )
      );
   }
}

class LocationViewWidget extends StatelessWidget {
  const LocationViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Deliver to", style: customNormalTextStyle(),),
                Row(
                  children: [
                    const Icon(Icons.location_on, color: Colors.deepOrange, size: 20,),
                    Text("Rajkot, GJ", style: customBoldTextStyle(size: 20),),
                    const Icon(Icons.arrow_drop_down, color: Colors.deepOrange, size: 30,)
                  ],
                ),
              ],
            ),
          ),

          // Stack(
          //   children: [
          //     Padding(
          //       padding: const EdgeInsets.only(right: 20),
          //       child: ClipRRect(
          //           borderRadius: BorderRadius.circular(15),
          //           child: Image.asset("assets/images/profile.jpg", height: 50, width: 50,)
          //       ),
          //     ),
          //   ],
          // ),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 20, top: 10),
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      width: 1,
                      color: Colors.white
                    )
                    //color: Colors.deepOrange,
                  ),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset("assets/images/profile.jpg", fit: BoxFit.fill,)
                  ),
                ),
              ),

              Positioned(
                top: 3,
                right: 12,
                child: Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.deepOrange,
                    border: Border.all(
                      width: 3,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}


class SearchViewWidget extends StatelessWidget {
  const SearchViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
         Padding(
           padding: const EdgeInsets.only(left: 20),
           child: Container(
             width: 285,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(10),
               color: Colors.grey.shade300
             ),
             child: const TextField(
               decoration: InputDecoration(
                 hintText: "Search",
                 prefixIcon: Icon(Icons.search, size: 25,),
                 border: InputBorder.none,
               ),
             ),
           ),
         ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Container(
              height: 48,
              width: 48,
              decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(10),
               color: Colors.deepOrange,
              ),
               child: const Icon(Icons.filter, color: Colors.white70, size: 20,),
            ),
          )
        ],
      )
    );
  }
}


class ImageBannerWidget extends StatelessWidget {
  const ImageBannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10, right: 10),
      child: ClipRRect(borderRadius: BorderRadius.circular(15), child: Image.asset("assets/images/banner.jpg")),
    );
  }
}

class SubHeaderWidget extends StatelessWidget {

  final String title;
  final String subtitle;

  const SubHeaderWidget({super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title , style: customBoldTextStyle(size: 18),),

          InkWell(
            onTap: () {
              //print("View All Pressed for $title tab");
            },
            child: Text(subtitle , style: customNormalTextStyle(size: 13),),
          ),
        ],
      ),
    );
  }
}


class CategoryListWidget extends StatelessWidget {
   CategoryListWidget({super.key});

   var nameList = ["Burger", "Pizza", "Snacks", "Water"];
   var imageList = ["Burger.png", "Pizza.png", "Snacks.png", "Water.png"];
   var colorList = [const Color(0xFFFBDCDA), const Color(0xFFD4EEF3), const Color(0xFFFAE6D5), const Color(0xFFEFCFE7)];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: nameList.length,
          itemBuilder: (context, index) {
            return Container(
              width: 90,
              margin: const EdgeInsets.only(left: 15, top: 10, bottom: 2),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: colorList[index],
                boxShadow: const [BoxShadow(
                  blurRadius: 2.0,
                  color: Colors.grey,
                )],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset("assets/images/${imageList[index]}", width: 60, height: 60,),
                  const SizedBox(height: 10),
                  Text(nameList[index], style: customBoldTextStyle(),),
                  const SizedBox(height: 7),
                ],
              ),
            );
          }
      ),
    );
  }
}

class PopularListWidget extends StatefulWidget {
  PopularListWidget({super.key});

  @override
  State<PopularListWidget> createState() => _PopularListWidgetState();
}

class _PopularListWidgetState extends State<PopularListWidget> {

  var selectedIndex = 0;
  var dataList = [
    {
      "title": "Chicken Burger",
      "subTitle": "Fast Food",
      "image": "Chicken Burger.jpg",
      "rating": "4.7",
      "totalRating": "945",
      "distance": "1 KM",
      "price": "\$15.50"
    },
    {
      "title": "Cheese Pizza",
      "subTitle": "Fast Food",
      "image": "Cheese Pizza.jpg",
      "rating": "4.9",
      "totalRating": "1045",
      "distance": "2 KM",
      "price": "\$20.50"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: dataList.map((value) =>
            InkWell(
              onTap: () {
                //print("Did Tap: $value");
                Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsPage(),));
              },
              child: Container(
                width: 300,
                margin: const EdgeInsets.only(left: 15, top: 5, bottom: 2),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: const [BoxShadow(blurRadius: 5.0, color: Colors.grey)],
                ),
                child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10)),
                            child: Image.asset(
                              "assets/images/${value["image"].toString()}",
                              height: 130,
                              width: 300,
                              fit: BoxFit.fitWidth,
                            )),
                        Padding(
                          padding: const EdgeInsets.only(left: 8, top: 8, right: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                value["title"].toString(),
                                style: customBoldTextStyle(),
                              ),

                              Row(
                                children: [
                                  const Icon(Icons.location_on ,size: 17, color: Colors.deepOrange,),
                                  const SizedBox(width: 3),
                                  Text(value["distance"].toString(), style: customNormalTextStyle(size: 12, color: Colors.grey),)
                                ],
                              ),


                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8, top: 8),
                          child: Text(
                            value["subTitle"].toString(),
                            style: customNormalTextStyle(),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8, top: 8),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.star,
                                size: 15,
                                color: Colors.orange,
                              ),
                              const SizedBox(
                                width: 3,
                              ),
                              Text(
                                value["rating"].toString(),
                                style: customBoldTextStyle(size: 12),
                              ),
                              const SizedBox(
                                width: 3,
                              ),
                              Text(
                                "(${value["totalRating"].toString()} ratings)",
                                style: customNormalTextStyle(size: 12),
                              ),
                            ],
                          ),
                        ),

                      ],
                    ),

                    Positioned(
                      right: 0,
                      bottom: 0,
                      child: Container(
                        width: 65,
                        height: 35,
                        decoration: const BoxDecoration(
                          color: Colors.deepOrange,
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(10)),
                        ),
                        child: Center(child: Text(value["price"].toString(), style: customBoldTextStyle(size: 13, color: Colors.white),)),

                      ),
                    ),
                  ],
                ),
              ),
            ),
          ).toList()

      ),

      // ListView.builder(
      //     scrollDirection: Axis.horizontal,
      //     itemCount: 2,
      //     itemBuilder: (context, index) {
      //       return Container(
      //         width: 300,
      //         margin: EdgeInsets.only(left: 15, top: 5, bottom: 2),
      //         decoration: BoxDecoration(
      //           borderRadius: BorderRadius.circular(10),
      //           color: Colors.white,
      //           boxShadow: [BoxShadow(blurRadius: 5.0, color: Colors.grey)],
      //         ),
      //         child: Stack(
      //           children: [
      //             Column(
      //               crossAxisAlignment: CrossAxisAlignment.start,
      //               children: [
      //                 ClipRRect(
      //                     borderRadius: BorderRadius.only(
      //                         topLeft: Radius.circular(10),
      //                         topRight: Radius.circular(10)),
      //                     child: Image.asset(
      //                       "assets/images/Chicken Burger.jpg",
      //                       height: 130,
      //                       width: 300,
      //                       fit: BoxFit.fitWidth,
      //                     )),
      //                 Padding(
      //                   padding: const EdgeInsets.only(left: 8, top: 8, right: 8),
      //                   child: Row(
      //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                     children: [
      //                       Text(
      //                         "Chicken Burger",
      //                         style: customBoldTextStyle(),
      //                       ),
      //
      //                       Row(
      //                         children: [
      //                           Icon(Icons.location_on ,size: 17, color: Colors.deepOrange,),
      //                           SizedBox(width: 3),
      //                           Text("1 KM", style: customNormalTextStyle(size: 12, color: Colors.grey),)
      //                         ],
      //                       ),
      //
      //
      //                     ],
      //                   ),
      //                 ),
      //                 Padding(
      //                   padding: const EdgeInsets.only(left: 8, top: 8),
      //                   child: Text(
      //                     "Fast Food",
      //                     style: customNormalTextStyle(),
      //                   ),
      //                 ),
      //                 Padding(
      //                   padding: const EdgeInsets.only(left: 8, top: 8),
      //                   child: Row(
      //                     children: [
      //                       Icon(
      //                         Icons.star,
      //                         size: 15,
      //                         color: Colors.orange,
      //                       ),
      //                       SizedBox(
      //                         width: 3,
      //                       ),
      //                       Text(
      //                         "4.7",
      //                         style: customBoldTextStyle(size: 12),
      //                       ),
      //                       SizedBox(
      //                         width: 3,
      //                       ),
      //                       Text(
      //                         "(941 Ratings)",
      //                         style: customNormalTextStyle(size: 12),
      //                       ),
      //                     ],
      //                   ),
      //                 ),
      //
      //               ],
      //             ),
      //
      //             Positioned(
      //               right: 0,
      //               bottom: 0,
      //               child: Container(
      //                 width: 65,
      //                 height: 35,
      //                 decoration: BoxDecoration(
      //                   color: Colors.deepOrange,
      //                   borderRadius: BorderRadius.only(topLeft: Radius.circular(10)),
      //                 ),
      //                 child: Center(child: Text("15.55", style: customBoldTextStyle(size: 13, color: Colors.white),)),
      //
      //               ),
      //             ),
      //           ],
      //         ),
      //       );
      //     }),
    );
  }
}

