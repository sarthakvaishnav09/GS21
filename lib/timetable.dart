import 'package:flutter/material.dart';

class TimeTablePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      alignment: Alignment.center,
      decoration: new BoxDecoration(
        image: new DecorationImage(
          image: new AssetImage("assets/images/timetable-page.jpg"),
          fit: BoxFit.cover,
        ),
      ),
    ));
  }
}
