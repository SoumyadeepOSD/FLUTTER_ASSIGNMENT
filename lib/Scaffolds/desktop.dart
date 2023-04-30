import 'package:gridapp/Home.dart';
import 'package:gridapp/ScreenFrame/screenframe.dart';
import 'package:flutter/material.dart';
import 'package:gridapp/constant.dart';

// ignore: camel_case_types
class desktop extends StatefulWidget {
  List<dynamic> persons = [];
  List<dynamic> works = [];

  desktop({super.key, required this.persons, required this.works});

  @override
  State<desktop> createState() => desktopState();
}

class desktopState extends State<desktop> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    int flag = 0;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20.0),
        color: backgroundColor,
        child: screenContainer(screenWidth, screenHeight, persons, works),
      ),
    );
  }
}
