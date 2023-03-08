import 'package:carpooling/widgets/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Container(
        // height: Get.height,
        child: Column(
          children: [
            // Container(
            //   height: 200,
            //   decoration: BoxDecoration(
            //       image: DecorationImage(
            //           image: NetworkImage(
            //               "https://i.dawn.com/primary/2019/03/5c9e6ab57ee44.png"),
            //           fit: BoxFit.cover)),
            // ),
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: Get.width / 1.75,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://i.dawn.com/primary/2019/03/5c9e6ab57ee44.png"),
                          fit: BoxFit.cover)),
                ),
                Positioned(
                    top: 10,
                    left: 10,
                    child: InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 30,
                      ),
                    ))
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomText(
                  text: "Our Mission",
                  weight: FontWeight.w500,
                  size: 35,
                  color: Colors.amber,
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.only(left: 50),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.done),
                      CustomText(
                        text: "Eco-Friendly",
                        weight: FontWeight.w500,
                        size: 20,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.done),
                      CustomText(
                        text: "Reduce Traffic",
                        weight: FontWeight.w500,
                        size: 20,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.done),
                      CustomText(
                        text: "Reduce Travel Expense",
                        weight: FontWeight.w500,
                        size: 20,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomText(
                  text: "Surpervised by",
                  weight: FontWeight.w500,
                  size: 35,
                  color: Colors.amber,
                ),
              ],
            ),
            // CustomText(
            //   text: "Our Mission",
            //   weight: FontWeight.w500,
            //   size: 35,
            // ),
            // SizedBox(
            //   height: 5,
            // ),
            // CustomText(
            //   text: "Our Mission",
            //   weight: FontWeight.w500,
            //   size: 35,
            // ),
            aboutItems("Dr Ajay", "Supervisor"),
            aboutItems("Dr Ajay", "Co-Supervisor"),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomText(
                  text: "Developers",
                  weight: FontWeight.w500,
                  size: 35,
                  color: Colors.amber,
                ),
              ],
            ),
            aboutItems("Sujen mugi", "project leader"),
            aboutItems("SUjen", "HEro mugi"),
            Column(
              children: [
                CustomText(
                  text: "Project By",
                  // size: ,
                  // weight: FontWeight.bold,
                ),
                CustomText(
                  text: 'AJay',
                  weight: FontWeight.bold,
                  size: 20,
                ),
              ],
            ),
          ],
        ),
      ),
    )));
  }

  Container aboutItems(String nam, String detail) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 25, horizontal: 15),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.
        children: [
          CircleAvatar(
            radius: 45,
            backgroundImage: NetworkImage(
              "https://scontent.fktm8-1.fna.fbcdn.net/v/t39.30808-6/325393333_2727741980700062_5696593088195775541_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=yqG6XVUaWNMAX8BX90J&_nc_ht=scontent.fktm8-1.fna&oh=00_AfAKlw-v3cXM4EqomHWVxPYQgL_3RXi6kmo_r9nDxJdC2g&oe=640D23C4",
            ),
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.topLeft,
                width: Get.width / 1.75,
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: CustomText(
                    text: nam,
                    size: 25,
                    weight: FontWeight.w600,
                  ),
                ),
              ),
              CustomText(text: detail)
            ],
          )
        ],
      ),
    );
  }
}
