import 'package:carpooling/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotificationsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("Notifications"),
        // leading: Icon(Icons.add_business),
        actions: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: TextButton(
              onPressed: () {},
              child: Text("Mark As Read"),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            notificationItem(),
            notificationItem(),
            notificationItem(),
            notificationItem(),
            SizedBox(height: 40)
          ],
        ),
      ),
    );
  }

  Widget notificationItem() {
    return InkWell(
      onTap: () {},
      child: Container(
        // margin: EdgeInsets.symmetric(vertical: 5),
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(width: 0.3),
          ),
        ),
        // color: Colors.teal,
        // height: 72,
        child: Row(
          children: [
            CircleAvatar(
              radius: 35,
              backgroundImage: NetworkImage(
                  "https://scontent.fktm8-1.fna.fbcdn.net/v/t39.30808-6/325393333_2727741980700062_5696593088195775541_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=yqG6XVUaWNMAX8BX90J&_nc_ht=scontent.fktm8-1.fna&oh=00_AfAKlw-v3cXM4EqomHWVxPYQgL_3RXi6kmo_r9nDxJdC2g&oe=640D23C4"),
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: Get.width / 1.4,
                  child: Text(
                    "Ride Accepted by mug khatey",
                    textScaleFactor: 1.3,
                    maxLines: 2,
                  ),
                ),
                // SizedBox(height: 5),
                CustomText(
                  text: "1 day ago",
                  color: Colors.grey,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
