import 'package:carpooling/views/bottomnavbar.dart';
import 'package:carpooling/widgets/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Carpooling",
      // themeMode: ,
      theme: MyThemes.lightTheme,
      // darkTheme: ThemeData.dark(),
      // MyThemes.darkTheme,
      home: BottomNavBar(),
    );
  }
}
