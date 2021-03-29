import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DietTile extends StatefulWidget 
{
  final String dietTileText;

  const DietTile({Key key, this.dietTileText}) : super(key: key);

  @override
  _DietTileState createState() => _DietTileState();
}

class _DietTileState extends State<DietTile> {
  @override
  Widget build(BuildContext context) {
      return Padding(
       padding: EdgeInsets.only(top:18, left:20,right:20),
          child: Container
      (
       
        width: 400,
       // height: 200,

       decoration: new BoxDecoration(
             color: Color.fromRGBO(255, 255, 255, 0.85),
             borderRadius: BorderRadius.circular(15),
             ),

        child: Padding(
          padding: EdgeInsets.all(10),
          child: Text(widget.dietTileText,style: TextStyle(fontSize:20),),
        ),
        
      ),
    );
  }
}