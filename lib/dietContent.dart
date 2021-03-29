import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:solution21/dietTile.dart';


class DietContent extends StatefulWidget 
{
  final String dietContentTrimester;
  final String dietContentTitle;
  final String dietContentImage;

  const DietContent({Key key, this.dietContentTrimester, this.dietContentTitle, this.dietContentImage}) : super(key: key);
  @override
  _DietContentState createState() => _DietContentState();
}

class _DietContentState extends State<DietContent> {
  @override
  Widget build(BuildContext context) 
  {


    return Scaffold
    (

      appBar: AppBar(
        centerTitle: true,
          title: Text(widget.dietContentTitle[0].toUpperCase()+widget.dietContentTitle.substring(1,widget.dietContentTitle.length),
                                      style: TextStyle(color:Colors.black, fontSize: 27,backgroundColor: Color.fromRGBO(255, 255, 255, 0.85),),),

         // title: Text(widget.dietContentTitle+" "+widget.dietContentTrimester, style: TextStyle(color:Colors.black),),
         
        // iconTheme: IconTheme(),
         iconTheme: IconThemeData(
            color: Colors.black, //change your color here
          ),

          backgroundColor: Colors.transparent,
        elevation: 0,
      ),

      
      extendBodyBehindAppBar: true,

      body:
                    Container(

                       decoration: new BoxDecoration(
                         image: new DecorationImage(
                            image: new AssetImage(widget.dietContentImage),
                            fit: BoxFit.cover,
                          ),

                          
                          ),


                      child: SafeArea(
                        child: StreamBuilder<QuerySnapshot>(
                        stream: Firestore.instance.collection(widget.dietContentTrimester)
                                                    .document("diet").collection(widget.dietContentTitle).snapshots(),
                        builder: (BuildContext context,
                            AsyncSnapshot<QuerySnapshot> snapshot) 
                            {

                                if(!snapshot.hasData)
                                {
                                  return Center(child : Text("Loading",style: TextStyle(fontSize:20),));
                                }



                              return  ListView(
                                  children: snapshot.data.documents
                                      .map((document) {
                                    return Container( 
                                      child: DietTile(dietTileText: document["item"],)

                                    );
                                  }).toList(),
                                );
                          
                              }

                                
                              ),
                      ),
                    ),
    );


  }
}