import 'package:carpooling/views/viewProfile.dart';
import 'package:carpooling/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';

class Favourites extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("Favourite"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                favouriteItem(),
                favouriteItem(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container favouriteItem() {
    return Container(
      padding: EdgeInsets.all(13),
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 3,
            // offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  Get.to(() => ViewProfile());
                },
                child: CircleAvatar(
                  radius: 35,
                  backgroundImage: NetworkImage(
                    "https://scontent.fktm8-1.fna.fbcdn.net/v/t39.30808-6/325393333_2727741980700062_5696593088195775541_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=yqG6XVUaWNMAX8BX90J&_nc_ht=scontent.fktm8-1.fna&oh=00_AfAKlw-v3cXM4EqomHWVxPYQgL_3RXi6kmo_r9nDxJdC2g&oe=640D23C4",
                  ),
                ),
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    width: Get.width / 1.85,
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: CustomText(
                        text: "Mug",
                        size: 25,
                      ),
                    ),
                  ),
                  GFRating(
                    color: GFColors.SUCCESS,
                    borderColor: GFColors.SUCCESS,
                    filledIcon: Icon(Icons.star, color: GFColors.SUCCESS),
                    defaultIcon: Icon(
                      Icons.star,
                      color: GFColors.LIGHT,
                    ),
                    size: GFSize.SMALL,
                    value: 3.5,
                    onChanged: (value) {},
                  ),
                ],
              ),
              Spacer(),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(Icons.notifications_active),
                  SizedBox(height: 5),
                  Icon(Icons.favorite)
                ],
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget startEndItem(IconData ic, String locationName) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(ic),
        SizedBox(width: 5),
        Container(
          alignment: Alignment.topLeft,
          width: Get.width / 2,
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: CustomText(
              text: locationName,
              size: 18,
            ),
          ),
        ),
      ],
    );
  }
}
