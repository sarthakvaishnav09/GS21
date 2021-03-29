import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'featureTile.dart';

class ExtraFeature extends StatefulWidget 
{
  final String EFname;
  final String EFemail;
  final String EFphone;
  final String EFtitle;
  final String EFimage;

  const ExtraFeature({Key key,@required this.EFname,@required this.EFemail,@required this.EFphone,@required this.EFtitle,@required this.EFimage}) : super(key: key);

  @override
  _ExtraFeatureState createState() => _ExtraFeatureState();
}

class _ExtraFeatureState extends State<ExtraFeature> {
  @override
  Widget build(BuildContext context) 
  {

    return Scaffold
    (

      appBar: AppBar(
        centerTitle: true,
          title: Text(widget.EFtitle[0].toUpperCase()+widget.EFtitle.substring(1,widget.EFtitle.length),
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
                            image: new AssetImage(widget.EFimage),
                            fit: BoxFit.cover,
                          ),

                          
                          ),


                      child: SafeArea(
                        child: StreamBuilder<QuerySnapshot>(
                        stream: Firestore.instance.collection(widget.EFtitle).snapshots(),
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