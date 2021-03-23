import 'package:flutter/material.dart';

class SelectionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      alignment: Alignment.center,
      decoration: new BoxDecoration(
        image: new DecorationImage(
          image: new AssetImage("assets/images/selection.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          Container(
            // padding: EdgeInsets.only(top: 50),
            child: (Column(children: [
              Padding(
                padding: EdgeInsets.only(left: 20, top: 50, right: 250),
                child: Container(
                  height: 100.0,
                  width: 100.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: new AssetImage(
                            "assets/images/development_selection.jpg"),
                        fit: BoxFit.cover),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 250, top: 0, right: 20),
                child: Container(
                  height: 100.0,
                  width: 100.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image:
                            new AssetImage("assets/images/diet_selection.webp"),
                        fit: BoxFit.cover),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, top: 0, right: 250),
                child: Container(
                  height: 100.0,
                  width: 100.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image:
                            new AssetImage("assets/images/yoga_selection.jpg"),
                        fit: BoxFit.cover),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 250, top: 0, right: 20),
                child: Container(
                  height: 100.0,
                  width: 100.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: new AssetImage(
                            "assets/images/timetable_selection.jpg"),
                        fit: BoxFit.cover),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, top: 0, right: 250),
                child: Container(
                  height: 100.0,
                  width: 100.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: new AssetImage(
                            "assets/images/clothing_selection.jpg"),
                        fit: BoxFit.cover),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 250, top: 0, right: 20),
                child: Container(
                  height: 100.0,
                  width: 100.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: new AssetImage(
                            "assets/images/activities_selection.jpg"),
                        fit: BoxFit.cover),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, top: 0, right: 250),
                child: Container(
                  height: 100.0,
                  width: 100.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: new AssetImage(
                            "assets/images/spiritual_selection.webp"),
                        fit: BoxFit.cover),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ])),
          ),
        ],
      ),
    ));
  }
}
