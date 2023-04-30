import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:gridapp/Home.dart';
import 'package:gridapp/ScreenFrame/screenframe.dart';
import 'package:gridapp/constant.dart';

// ignore: camel_case_types
class mobile extends StatelessWidget {
  List<dynamic> persons = [];
  List<dynamic> works = [];

  mobile({super.key, required this.persons, required this.works});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        color: backgroundColor,
        child: SingleChildScrollView(
          child: Column(
            children: [
              TopBar,
              leftSection(100, 200, works, 5, 5),
              testimonalSection(screenWidth),
              rightSection(screenWidth, screenHeight, persons),
              aboutSection(screenWidth, persons)
            ],
          ),
        ),
      ),
    );
  }
}
