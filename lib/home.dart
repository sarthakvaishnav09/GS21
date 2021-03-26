import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String title;

  HomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        alignment: Alignment.center,
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage("assets/images/homepage.jpg"),
            fit: BoxFit.cover,
          ),
        ),
      )),
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
