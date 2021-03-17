import 'package:flutter/material.dart';
import 'package:solution21/diet.dart';

class YogaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      alignment: Alignment.center,
      decoration: new BoxDecoration(
        image: new DecorationImage(
          image: new AssetImage("assets/images/yoga.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          Container(
              padding: EdgeInsets.only(top: 100),
              child: (Column(children: [
                Text(
                  'Yoga',
                  textAlign: TextAlign.start,
                  style: TextStyle(color: Colors.white, fontSize: 50),
                ),
                SizedBox(
                  height: 50,
                ),
                Align(
                  alignment: Alignment.topLeft,
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
                          "Warm Up",
                          style: TextStyle(fontSize: 25.0),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => DietPage()),
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
                  height: 40,
                ),
                Align(
                  alignment: Alignment.topRight,
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
                          "Exercise",
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
                  height: 40,
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
                          "Yoga",
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
                  height: 40,
                ),
                Align(
                  alignment: Alignment.centerRight,
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
                          "Pranayam",
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
                  height: 40,
                ),
                Align(
                  alignment: Alignment.bottomLeft,
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
                          "What not to do",
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
    ));
  }
}
