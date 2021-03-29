import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FeatureTile extends StatefulWidget 
{
  final String contentText;

  const FeatureTile({Key key, this.contentText}) : super(key: key);

 // String aa=contentText;
  @override
  _FeatureTileState createState() => _FeatureTileState();
}

class _FeatureTileState extends State<FeatureTile> 
{

  //var aa=widget.contentText.toString().replaceAll("\n", "\n");
  @override
  Widget build(BuildContext context) 
  {
    String aa=widget.contentText.replaceAll("\\n", "\n");
    print(aa);
    return Padding(
       padding: EdgeInsets.only(top:18, left:20,right:20),
          child: Container
      (
       
        width: 400,
       // height: 200,

       decoration: new BoxDecoration(
             color: Color.fromRGBO(255, 255, 255, 0.7),
             borderRadius: BorderRadius.circular(15),
             ),

        child: Padding(
          padding: EdgeInsets.all(10),
          child: Text(aa,style: TextStyle(fontSize:20),),
         // child: Text(aa),
        ),
        
      ),
    );
  }
}