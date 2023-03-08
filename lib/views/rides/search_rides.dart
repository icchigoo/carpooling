import 'package:carpooling/views/rides/requestRide.dart';
import 'package:carpooling/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class SearchRides extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.arrow_back_sharp),
                  Text("MATCHING RIDES"),
                  Icon(Icons.filter_list_alt)
                ],
              ),
              Column(
                children: [
                  RideItem(),
                  RideItem(),
                  RideItem(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class RideItem extends StatelessWidget {
  const RideItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 0.5, color: Colors.grey),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                      "https://scontent.fktm8-1.fna.fbcdn.net/v/t39.30808-6/325393333_2727741980700062_5696593088195775541_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=yqG6XVUaWNMAX8BX90J&_nc_ht=scontent.fktm8-1.fna&oh=00_AfAKlw-v3cXM4EqomHWVxPYQgL_3RXi6kmo_r9nDxJdC2g&oe=640D23C4",
                    ),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Text(
                      //   "Name",
                      //   textScaleFactor: 1.3,
                      // ),
                      Container(
                        width: Get.width / 2,
                        alignment: Alignment.topLeft,
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: CustomText(
                            text: "mug",
                            size: 20,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Icon(Icons.school_sharp), SizedBox(width: 5),
                          Container(
                            width: Get.width / 2.2,
                            alignment: Alignment.topLeft,
                            child: FittedBox(
                              fit: BoxFit.scaleDown,
                              child: CustomText(
                                text: "islington ",
                                // size: 18,
                              ),
                            ),
                          ) //Company detail or anything
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(right: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      child: CircularPercentIndicator(
                        radius: 45.0,
                        lineWidth: 4.0,
                        animation: true,
                        percent: 0.8,
                        center: Text(
                          // percent.toString() + "%",
                          "80%",
                          style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                        // backgroundColor: Colors.grey[300],
                        circularStrokeCap: CircularStrokeCap.round,
                        progressColor: Colors.green,
                      ),
                    ),
                    Text(
                      "Match",
                      style: TextStyle(
                          // fontSize: 15.0,
                          // fontWeight: FontWeight.w600,
                          color: Colors.black54),
                    )
                  ],
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Icon(
                          Icons.trip_origin,
                          size: 20,
                        ),
                      ),
                      Container(
                        width: Get.width / 2.8,
                        alignment: Alignment.topLeft,
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: CustomText(
                            text: "Street # 4, 22 No.",
                            // size: 2,
                          ),
                        ),
                      ),
                    ],
                  ),
                  // SizedBox(height: 5),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        //color accordign to government or private
                        // like green from governmnet
                        size: 30,
                      ),
                      // Text(),
                      Container(
                        width: Get.width / 2.8,
                        alignment: Alignment.topLeft,
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: CustomText(
                            text: ", Nepal",
                            // size: 2,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(
                    // Icons.pedal_bike,
                    Icons.directions_car_sharp,
                    size: 35,
                  ),
                  Container(
                    width: Get.width / 2.8,
                    alignment: Alignment.topLeft,
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: CustomText(
                        text: "Tesla Mugi",
                        // size: 2,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 120,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.symmetric(vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "4",
                              textScaleFactor: 1.3,
                            ),
                            Icon(
                              Icons.star_rate_rounded,
                              color: Colors.green,
                              //yellow not visible fix later
                              size: 22,
                            )
                          ],
                        ),
                        Text(
                          "Rating",
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "80",
                              textScaleFactor: 1.3,
                            ),
                            Text(
                              "%",
                              textScaleFactor: 1.3,
                              style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.w900),
                            )
                          ],
                        ),
                        Text(
                          "Profile", //make circle and colors indicating percentage
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                // height: 70,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // Container(
                    //   color: Colors.grey[200],
                    //   // decoration: BoxDecoration(
                    //   //   borderRadius: BorderRadius.circular(10),
                    //   // ),
                    //   padding: EdgeInsets.all(5),
                    //   width: 120,
                    //   child: Row(
                    //     mainAxisAlignment:
                    //         MainAxisAlignment.spaceBetween,
                    //     children: [
                    //       Row(
                    //         children: [
                    //           Icon(Icons
                    //               .airline_seat_legroom_reduced_sharp),
                    //           Text("2/3"),
                    //           // Text("avilable"),
                    //         ],
                    //       ),
                    //       Row(
                    //         children: [
                    //           Text("8"),
                    //           Icon(Icons.redo)
                    //           // Text("Request send"),
                    //         ],
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    TextButton(
                        onPressed: () {
                          Get.to(() => RequestRide());
                          // ScaffoldMessenger.of(context).showSnackBar(
                          //   SnackBar(
                          //     content: Text(
                          //       'Request Send',
                          //       textAlign: TextAlign.center,
                          //     ),
                          //   ),
                          // );
                        },
                        child: Container(
                          // color: Colors.grey[200],
                          // decoration: BoxDecoration(
                          //   borderRadius: BorderRadius.circular(10),
                          // ),
                          // padding: EdgeInsets.all(5),
                          width: 100,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        Icons
                                            .airline_seat_legroom_reduced_sharp,
                                      ),
                                      Text("2/3"),

                                      // Text("avilable"),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text("8"),
                                      Icon(Icons.redo)
                                      // Text("Request send"),
                                    ],
                                  ),
                                ],
                              ),
                              Container(
                                  padding: EdgeInsets.symmetric(vertical: 3),
                                  child: Text("Sent Request")),
                            ],
                          ),
                        )

                        // Text("Sent Request"),
                        // style: ButtonStyle(
                        //   padding: EdgeInsetsGeometry.,
                        // ),
                        )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
