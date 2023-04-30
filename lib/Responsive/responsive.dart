import 'package:flutter/material.dart';
import 'package:gridapp/Scaffolds/desktop.dart';
import 'package:gridapp/Scaffolds/mobile.dart';
import 'package:gridapp/Scaffolds/tablet.dart';

// ignore: camel_case_types
class responsive extends StatelessWidget {
  final Widget desktopView;
  final Widget phoneView;
  final List<dynamic> persons;
  final List<dynamic> works;
  const responsive(
      {super.key,
      required this.desktopView,
      required this.phoneView,
      required this.persons,
      required this.works});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 500) {
        return mobile(
          persons: persons,
          works: works,
        );
      }
      // else if (constraints.maxWidth <= 1000) {
      //   return const tablet();
      // }
      else {
        return desktop(
          persons: persons,
          works: works,
        );
      }
    });
  }
}
