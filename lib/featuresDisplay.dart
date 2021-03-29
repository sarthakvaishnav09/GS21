import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:solution21/featureTile.dart';
import 'package:flutter/material.dart';

class FeaturesDisplay extends StatefulWidget 
{
  final String featuresTitle;
  final String featuresTrimester;
  final String image;

  const FeaturesDisplay({Key key, this.featuresTitle, this.featuresTrimester, this.image}) : super(key: key);
  //final String features;
  @override
  _FeaturesDisplayState createState() => _FeaturesDisplayState();
}

class _FeaturesDisplayState extends State<FeaturesDisplay> {
  @override
  Widget build(BuildContext context) 
  {

    return Scaffold
    (

      appBar: AppBar(
        centerTitle: true,
          title: Text(widget.featuresTitle[0].toUpperCase()+widget.featuresTitle.substring(1,widget.featuresTitle.length),
                                      style: TextStyle(color:Colors.black, fontSize: 25,backgroundColor: Color.fromRGBO(255, 255, 255, 0.55)),),
        backgroundColor: Colors.transparent,
        elevation: 0,
         iconTheme: IconThemeData(
            color: Colors.black, //change your color here
          ),
      ),

      
      extendBodyBehindAppBar: true,

      body:
                    Container(

                       decoration: new BoxDecoration(
                         image: new DecorationImage(
                            image: new AssetImage(widget.image),
                            fit: BoxFit.cover,
                          ),

                          
                          ),


                      child: SafeArea(
                        child: StreamBuilder<QuerySnapshot>(
                        stream: Firestore.instance.collection(widget.featuresTrimester)
                                                    .document(widget.featuresTitle).collection("a").snapshots(),
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
                                      

                                      child: FeatureTile(contentText: document["item"],)

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