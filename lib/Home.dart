import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gridapp/Responsive/responsive.dart';
import 'package:gridapp/Scaffolds/desktop.dart';
import 'package:gridapp/Scaffolds/mobile.dart';
import 'package:gridapp/main.dart';

import 'Models/model.dart';

List<dynamic> persons = [];
List<dynamic> works = [];
// ignore: constant_identifier_names

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  Future<void> loadData() async {
    final String jsonUserString =
        await rootBundle.loadString('assets/personal.json');
    final jsonUserList = json.decode(jsonUserString);
    final String jsonInfoString =
        await rootBundle.loadString('assets/testimonal.json');
    final jsonInfoList = json.decode(jsonInfoString);

    setState(() {
      persons = jsonUserList;
      works = jsonInfoList;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: responsive(
        desktopView: desktop(persons: persons, works: works),
        phoneView: mobile(persons: persons, works: works),
        persons: persons,
        works: works,
      ),
    );
  }
}
