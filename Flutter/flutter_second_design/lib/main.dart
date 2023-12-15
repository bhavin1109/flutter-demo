import 'package:flutter/material.dart';
import 'package:flutter_second_design/DetailPage.dart';
import 'package:flutter_second_design/UtilityClass/CustomTextStyle.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  var currentIndex = 0;
  final tabs = [const HomePage(), const ProfilePage(), const CartPage()];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: tabs[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            type: BottomNavigationBarType.shifting,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home", backgroundColor: Colors.deepOrange),
              BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: "Cart", backgroundColor: Colors.deepPurple),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile", backgroundColor: Colors.black),
            ]
        ),
      ),
    );
  }
}


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 60),
        child: Column(
          children: [
            HeaderViewWidget(),

            const SizedBox(height: 15),

            CategoryListWidget(),

            CollectionListWidget(),

            const SizedBox(height: 15),

            FullSliderWidget(),
          ],
        ),
      ),
    );
  }
}

class HeaderViewWidget extends StatelessWidget {
  const HeaderViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Padding(
        padding: const EdgeInsets.only(left: 0, right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(onPressed: () {}, icon: Icon(Icons.filter, size: 30)),
            Container(
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(10)
              ),
              child: IconButton(onPressed: () {}, icon: Icon(Icons.filter, size: 25, color: Colors.white,)),
            )
          ],
        ),
      ),
    );
  }
}


class CategoryListWidget extends StatelessWidget {
  const CategoryListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: SizedBox(
        width: double.infinity,
        height: 150,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Text("Delicious Food", style: customBoldStyle(size: 25),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text("Discover and Get Great Food", style: customNormalStyle(color: Colors.grey),),
            ),

            const SizedBox(height: 10),

            Container(
              width: double.infinity,
              height: 70,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 10, top: 2, bottom: 2, right: 10),
                      child: Container(
                        width: 60,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [BoxShadow(
                            color: Colors.grey,
                            blurRadius: 3
                          )],

                        ),
                        child: Center(child: Image.asset("assets/images/icon${index+1}.png", width: 40, height: 40,)),
                      ),
                    );

              }),
            ),
          ],
        ),
      ),
    );
  }
}

class CollectionListWidget extends StatelessWidget {
  const CollectionListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: SizedBox(
        height: 290,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsPage(),));
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: SizedBox(
                    width: 200,
                    child: Stack(
                      children: [
                        Positioned(
                          top: 60,
                          bottom: 10,
                          left: 0,
                          right: 0,
                          child: Container(
                            width: 200,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 3,
                                )
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Veggie Taco Hash",
                                    style: customBoldStyle(size: 18),
                                  ),
                                  const SizedBox(height: 2),
                                  Text(
                                    "Fresh and Healty Veg Salad",
                                    style: customNormalStyle(),
                                  ),
                                  const SizedBox(height: 7),
                                  Text(
                                    "25.50",
                                    style: customNormalStyle(),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 15,
                          child: Container(
                              height: 170,
                              width: 170,
                              // decoration: BoxDecoration(
                              //     borderRadius: BorderRadius.circular(85),
                              //     border: Border.all(
                              //         color: Colors.grey,
                              //         width: 1
                              //     )
                              // ),
                              child: Image.asset(
                                "assets/images/chilli_salad.png",
                                width: 150,
                                height: 150,
                              )),
                        ),
                        Positioned(
                            bottom: 10,
                            right: 0,
                            child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.favorite,
                                  size: 20,
                                ))),
                      ],
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}

class FullSliderWidget extends StatelessWidget {
  const FullSliderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      width: double.infinity,
      child: ListView.builder(
          itemCount: 5,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(left: 10, top: 2, bottom: 2, right: 20),
              child: SizedBox(
                width: 360,
                child: Stack(
                  children: [
                    Positioned(
                      left: 10,
                      right: 0,
                      bottom: 15,
                      top: 17,
                      child: Container(
                        width: 350,
                        height: 120,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(90), bottomLeft: Radius.circular(90), topRight: Radius.circular(15), bottomRight: Radius.circular(15)),
                          color: Colors.white,
                          boxShadow: [BoxShadow(
                            color: Colors.grey,
                            blurRadius: 2,
                          )],
                        ),
                      ),
                    ),

                    Image.asset("assets/images/fruit_salad.png",),

                    Positioned(
                      left: 150,
                      right: 10,
                      bottom: 10,
                      top: 10,
                      child: Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Medigterran Fruit Salad",
                                style: customBoldStyle(),
                              ),
                              const SizedBox(height: 2),
                              Text(
                                "Special ready salad",
                                style: customNormalStyle(),
                              ),
                              const SizedBox(height: 7),
                              Text(
                                "25.50",
                                style: customNormalStyle(),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
      }),
    );
  }
}


class BottomNavigationBarWidget extends StatefulWidget {
  BottomNavigationBarWidget({super.key});

  @override
  State<BottomNavigationBarWidget> createState() => _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  var currentIndex = 0;
  final tabs = [const HomePage(), const ProfilePage(), const CartPage()];

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        type: BottomNavigationBarType.shifting,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home", backgroundColor: Colors.deepOrange),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: "Cart", backgroundColor: Colors.deepPurple),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile", backgroundColor: Colors.black),
    ]
    );
  }
}


class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Profile", style: customBoldStyle(size: 25),),
    );
  }
}

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Cart", style: customBoldStyle(size: 25),),
    );
  }
}
