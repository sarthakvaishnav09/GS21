import 'package:flutter/material.dart';
import 'package:solution21/selection.dart';

class BabyGrowth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          alignment: Alignment.center,
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new AssetImage("assets/images/trimester.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              Container(
                  padding: EdgeInsets.only(top: 100),
                  child: (Column(children: [
                    Text(
                      'Baby Growth',
                      textAlign: TextAlign.start,
                      style: TextStyle(color: Colors.white, fontSize: 50),
                    ),
                    SizedBox(
                      height: 350,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: ButtonTheme(
                        minWidth: 300.0,
                        height: 56.0,
                        child: Opacity(
                          opacity: 0.7,
                          child: RaisedButton(
                            // padding: const EdgeInsets.only(right: 200),
                            textColor: Colors.black,
                            color: Colors.white,
                            child: Text(
                              "1st Trimester",
                              style: TextStyle(fontSize: 25.0),
                            ),

                            onPressed: () {
                              Icon(Icons.play_arrow);
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SelectionPage()),
                              );
                            },
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: ButtonTheme(
                        minWidth: 300.0,
                        height: 56.0,
                        child: Opacity(
                          opacity: 0.7,
                          child: RaisedButton(
                            // padding: const EdgeInsets.only(right: 200),
                            textColor: Colors.black,
                            color: Colors.white,
                            child: Text(
                              "2nd Trimester",
                              style: TextStyle(fontSize: 25.0),
                            ),
                            onPressed: () {},
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: ButtonTheme(
                        minWidth: 300.0,
                        height: 56.0,
                        child: Opacity(
                          opacity: 0.7,
                          child: RaisedButton(
                            // padding: const EdgeInsets.only(right: 200),
                            textColor: Colors.black,
                            color: Colors.white,
                            child: Text(
                              "3rd Trimester",
                              style: TextStyle(fontSize: 25.0),
                            ),
                            onPressed: () {},
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ]))),
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
        ));
  }
}
