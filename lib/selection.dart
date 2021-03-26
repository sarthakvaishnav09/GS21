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
                      border: Border.all(width: 3, color: Colors.black),
                      image: DecorationImage(
                          image: new AssetImage(
                              "assets/images/development_selection.jpg"),
                          fit: BoxFit.cover),
                      shape: BoxShape.circle,
                    ),
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                        padding: EdgeInsets.only(bottom: 10.0),
                        child: Text('Development',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold))),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 250, top: 0, right: 20),
                  child: Container(
                    height: 100.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                      border: Border.all(width: 3, color: Colors.black),
                      image: DecorationImage(
                          image: new AssetImage(
                              "assets/images/diet_selection.webp"),
                          fit: BoxFit.cover),
                      shape: BoxShape.circle,
                    ),
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                        padding: EdgeInsets.only(bottom: 10.0),
                        child: Text('Diet',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold))),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 0, right: 250),
                  child: Container(
                    height: 100.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                      border: Border.all(width: 3, color: Colors.black),
                      image: DecorationImage(
                          image: new AssetImage(
                              "assets/images/yoga_selection.jpg"),
                          fit: BoxFit.cover),
                      shape: BoxShape.circle,
                    ),
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                        padding: EdgeInsets.only(bottom: 10.0),
                        child: Text('Yoga',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold))),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 250, top: 0, right: 20),
                  child: Container(
                    height: 100.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                      border: Border.all(width: 3, color: Colors.black),
                      image: DecorationImage(
                          image: new AssetImage(
                              "assets/images/timetable_selection.jpg"),
                          fit: BoxFit.cover),
                      shape: BoxShape.circle,
                    ),
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                        padding: EdgeInsets.only(bottom: 10.0),
                        child: Text('Timetable',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold))),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 0, right: 250),
                  child: Container(
                    height: 100.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                      border: Border.all(width: 3, color: Colors.black),
                      image: DecorationImage(
                          image: new AssetImage(
                              "assets/images/clothing_selection.jpg"),
                          fit: BoxFit.cover),
                      shape: BoxShape.circle,
                    ),
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                        padding: EdgeInsets.only(bottom: 10.0),
                        child: Text('Clothing',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold))),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 250, top: 0, right: 20),
                  child: Container(
                    height: 100.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                      border: Border.all(width: 3, color: Colors.black),
                      image: DecorationImage(
                          image: new AssetImage(
                              "assets/images/activities_selection.jpg"),
                          fit: BoxFit.cover),
                      shape: BoxShape.circle,
                    ),
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                        padding: EdgeInsets.only(bottom: 30.0),
                        child: Text('Activities',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold))),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(left: 0, top: 0, right: 250),
                    child: Container(
                      height: 100.0,
                      width: 100.0,
                      decoration: BoxDecoration(
                        border: Border.all(width: 3, color: Colors.black),
                        image: DecorationImage(
                            image: new AssetImage(
                                "assets/images/spiritual_selection.webp"),
                            fit: BoxFit.cover),
                        shape: BoxShape.circle,
                      ),
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Text('Spiritual Chants',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500))),
                    )),
              ])),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('its drawer'),
              decoration: BoxDecoration(
                color: Colors.pink,
              ),
            ),
            ListTile(
              title: Text('item1'),
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
}
