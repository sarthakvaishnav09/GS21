import 'package:flutter/material.dart';

class ClothingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      alignment: Alignment.center,
      decoration: new BoxDecoration(
        image: new DecorationImage(
          image: new AssetImage("assets/images/clothing.jpg"),
          fit: BoxFit.cover,
        ),
      ),
    ));
  }
}
