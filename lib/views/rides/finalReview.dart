import 'package:carpooling/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/rating/gf_rating.dart';
import 'package:getwidget/getwidget.dart';

class FinalReview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Center(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://scontent.fktm8-1.fna.fbcdn.net/v/t39.30808-6/325393333_2727741980700062_5696593088195775541_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=yqG6XVUaWNMAX8BX90J&_nc_ht=scontent.fktm8-1.fna&oh=00_AfAKlw-v3cXM4EqomHWVxPYQgL_3RXi6kmo_r9nDxJdC2g&oe=640D23C4"),
                  radius: 60.0,
                ),
                SizedBox(height: 10),
                FittedBox(
                    fit: BoxFit.fitWidth,
                    child: CustomText(
                      text: "Mug",
                      size: 30,
                    )),
                SizedBox(height: 20),
                CustomText(
                  text: "Rate your driver",
                  size: 20,
                ),
                SizedBox(
                  height: 5,
                ),
                GFRating(
                  color: GFColors.SUCCESS,
                  borderColor: GFColors.SUCCESS,
                  filledIcon: Icon(Icons.star, color: GFColors.SUCCESS),
                  defaultIcon: Icon(
                    Icons.star,
                    color: GFColors.LIGHT,
                  ),
                  size: GFSize.LARGE,
                  value: 3.5,
                  onChanged: (value) {},
                ),
                SizedBox(height: 10),
                TextField(
                  maxLines: null,
                  maxLength: 50,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Write your comments here'),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, 50),
                    primary: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: () {},
                  child: CustomText(
                    text: "Send Reviews",
                    size: 20,
                    weight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
