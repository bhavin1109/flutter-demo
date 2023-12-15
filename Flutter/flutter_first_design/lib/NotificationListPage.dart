import 'package:flutter/material.dart';
import 'package:flutter_first_design/OrderListPage.dart';
import 'package:flutter_first_design/UtilityClass/CustomTextStyle.dart';

class NotificationListPage extends StatefulWidget {
  const NotificationListPage({super.key});

  @override
  State<NotificationListPage> createState() => _NotificationListPageState();
}

class _NotificationListPageState extends State<NotificationListPage> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: navigationText(text: "Notifications"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Row(
                children: [
                  Flexible(child: bodyText(text: "Aktivieren Sie Benachrichtigungen, damit Sie keine Angebote verpassen.")),
                  Switch(value: isSelected , onChanged: toggleSwitch,activeColor: Colors.black,),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: getListView(["Unsere App ist OnlineText(data)"]), //ListViewWidget(),
            ),
          ],
        ),

      ),
    );
  }

  void toggleSwitch(bool value){
    setState(() {
      isSelected =! isSelected;
    });
  }
}

Widget getListView(var listData) {
  return ListView.builder(
    itemCount: 10,
    itemBuilder: (context, index) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 5),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => OrderListPage(),));
              },
              child: Wrap(
                runSpacing: 7,
                children: [
                  subHeadingText(text: listData[0]),
                  bodyText(text: "Bestelle Über unsere neue App und erhalte 10% Rabatt auf deine Bestellung!"),
                  bodyText(text: "10/18/2023")
                ],
              ),
            ),
          ),
        ),
      );
    },
  );
}
