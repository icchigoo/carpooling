import 'package:carpooling/views/vehicle/addvehicle.dart';
import 'package:carpooling/widgets/custom_text.dart';
import 'package:get/get.dart';

import 'package:flutter/material.dart';

import 'package:get/get_core/get_core.dart';

class Vehicle extends StatelessWidget {
  var vehicleList = [
    {
      "type": "car",
      "name": "Corola",
      "color": "red",
      "number": "RIW-2981",
      "image": "img-link"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("Vehicles"),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // SizedBox(height: 30),
              vehicleItem(),
              vehicleItem(),
              vehicleItem(),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(() => AddVehicle());
        },
        child: Icon(Icons.add),
      ),
    );
  }

  Container vehicleItem() {
    return Container(
      // margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 0.4),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 45,
                backgroundImage: NetworkImage(
                  "https://scontent.fktm8-1.fna.fbcdn.net/v/t39.30808-6/325393333_2727741980700062_5696593088195775541_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=yqG6XVUaWNMAX8BX90J&_nc_ht=scontent.fktm8-1.fna&oh=00_AfAKlw-v3cXM4EqomHWVxPYQgL_3RXi6kmo_r9nDxJdC2g&oe=640D23C4",
                ),
              ),
              SizedBox(width: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: "Corolla 2016",
                    size: 20,
                    weight: FontWeight.bold,
                  ),
                  CustomText(
                    text: "RIW-2981",
                    size: 20,
                  ),
                  SizedBox(height: 5),
                  CustomText(
                    text: "21 KM/L",
                    color: Colors.orange,
                    size: 20,
                  )
                ],
              ),
            ],
          ),
          Icon(
            Icons.delete,
            size: 30,
          )
        ],
      ),
    );
  }
}
