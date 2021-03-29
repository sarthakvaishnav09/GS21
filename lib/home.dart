import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:solution21/drawer.dart';
import 'package:solution21/extraFeature.dart';
import 'package:solution21/main.dart';
import 'package:solution21/selection.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

import 'baby_growth.dart';

class HomePage extends StatefulWidget {
  final String userId;
  HomePage({Key key, this.userId}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String userEmail,userName,phoneNumber;

  FirebaseAuth auth = FirebaseAuth.instance;

  FirebaseUser currentUser;

  



  @override
  Widget build(BuildContext context) 
  {

    return StreamBuilder(
      stream: Firestore.instance
                   .collection('users')                            
                        .document(widget.userId)
                        .snapshots(),
      builder:(context,snapshot)
    {
      userName=snapshot.data["name"].toString();
      userEmail=snapshot.data["email"].toString();
      phoneNumber=snapshot.data["phone"].toString();


      return Scaffold
    (
      appBar: AppBar
      (
        iconTheme: IconThemeData
        (
            color: Colors.black, 
        ),
         centerTitle: true,

        title: Text("Home",style: TextStyle(color:Colors.black, fontSize: 25, fontWeight: FontWeight.bold),),

        backgroundColor: Colors.transparent,
        elevation: 0,
        
      ),
      extendBodyBehindAppBar: true,
      


      body: Container(
        alignment: Alignment.center,
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage("assets/images/home3.jpeg"),
            fit: BoxFit.cover,
          ),
        ),

        child: Column(
                  children:
                  [
                    //Text(widget.userId),

                    SizedBox(height:100),

                    Container(
                      height: 200,
                      width: 200,
                                          child: SfRadialGauge
                      (
                        axes: <RadialAxis>[
                        RadialAxis(
                          minimum: 0,
                          maximum: 9,
                          showLabels: false,
                          showTicks: false,
                          axisLineStyle: AxisLineStyle(
                            thickness: 0.2,
                            cornerStyle: CornerStyle.bothCurve,
                            color: Color.fromARGB(30, 0, 169, 181),
                            thicknessUnit: GaugeSizeUnit.factor,
                            
                          ),
                          pointers: <GaugePointer>[
                              RangePointer(
                                color: Colors.white,
                              value:3,
                              cornerStyle: CornerStyle.bothCurve,
                              width: 0.2,
                              sizeUnit: GaugeSizeUnit.factor,
                              )
                              ],

                              annotations: <GaugeAnnotation>[
                              GaugeAnnotation(
                              positionFactor: 0.1,
                              angle: 90,
                              widget: Text(
                              //progressValue.toStringAsFixed(0) + ' / 100',
                              """3 months/
   9 months""",
                              style: TextStyle(fontSize: 17,color: Colors.white,fontWeight: FontWeight.bold),
                              ))
                              ]

                              
                        )
                      ]
                      ),
                    ),

                    SizedBox(height:170),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:
                    [
                      Column(
                        children:[ 

                        InkWell(
                              
                          onTap: ()
                          {
                             Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) =>BabyGrowth(growthUserId: widget.userId.toString(),)),
                              );
                          },

                            child: Container(

                            decoration: BoxDecoration(
                               image: new DecorationImage(
                                    image: new AssetImage("assets/images/fetul_growth.jpg"),
                                    alignment: Alignment.topLeft,
                                    fit: BoxFit.cover,
                                  ),

                              border: Border.all(
                                color: Colors.black,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(20))
                            ),

                            height: 85,
                            width: 105,

                            
                          ),
                        ),

                        Text("""ANC 
   """,style: TextStyle(fontSize: 15,fontWeight:FontWeight.bold),)


                        ]
                      ),
       //-------------------------------------------------------------------------------               

                      SizedBox(width:60),

       //-------------------------------------------------------------------------------   

                      Column(
                        children:[ 
                          
                          InkWell(

                            onTap: ()
                          {
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) =>ExtraFeature(EFname: userName, EFemail: userEmail, EFphone: phoneNumber, EFimage: "assets/images/mentalHealth3.png",EFtitle: "mentalHealth",)),
                              );
                          },
                                 
                             child: Container(
                             decoration: BoxDecoration(

                                image: new DecorationImage(
                                    image: new AssetImage("assets/images/mental_health_block.jpg"),
                                    alignment: Alignment.topLeft,
                                    fit: BoxFit.cover,
                                  ),

                              border: Border.all(
                                color: Colors.black,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(20))
                            ),


                            height: 85,
                            width: 105,
                        ),
                          ),

                        Text("""Mental 
Health""",style: TextStyle(fontSize: 15,fontWeight:FontWeight.bold),)
                        ]
                      ),

                    ]),

       //-------------------------------------------------------------------------------   
       //-------------------------------------------------------------------------------   
                    SizedBox(height:40),
        //-------------------------------------------------------------------------------   
        //-------------------------------------------------------------------------------   

                     Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children:
                    [
                      Column(
                        children:[
                          
                          
                           InkWell(
                             onTap: ()
                          {
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) =>ExtraFeature(EFname: userName, EFemail: userEmail,
                                                                                 EFphone: phoneNumber, 
                                                                                EFtitle: "precautions", 
                                                                                EFimage: "assets/images/precautions2.jpg")),
                              );

                          },
                              
                              child: Container(

                             decoration: BoxDecoration(

                               image: new DecorationImage(
                                    image: new AssetImage("assets/images/80379413.jpg"),
                                    alignment: Alignment.topLeft,
                                    fit: BoxFit.cover,
                                  ),
                              
                              border: Border.all(
                                color: Colors.black,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(20))
                          ),


                          height: 85,
                          width: 105,
                        ),
                           ),

                        Text("""Precautions
""",style: TextStyle(fontSize: 15,fontWeight:FontWeight.bold),)
                        ]
                      ),
          //-------------------------------------------------------------------------------   

                      SizedBox(width:60),

          //-------------------------------------------------------------------------------  



                      Column(
                        children:[ 
                          
                          InkWell(

                            onTap: ()
                          {

                          },
                              
                               child: Container(

                             decoration: BoxDecoration(


                                image: new DecorationImage(
                                    image: new AssetImage("assets/images/Online-Consult.jpg"),
                                    alignment: Alignment.topLeft,
                                    fit: BoxFit.cover,
                                  ),

                                  
                              border: Border.all(
                                color: Colors.black,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(20))
                            ),



                            height: 85,
                            width: 105,
                        ),
                          ),

                        Text("""   Online 
Consultation""",style: TextStyle(fontSize: 15,fontWeight:FontWeight.bold),),
                        ]
                      ),

                    ]),


                  ]
        )
      ),
      //drawer:drawerApp(userName,userEmail,phoneNumber),

      drawer: drawerApp(userName, userEmail, phoneNumber,widget.userId),
      
    );
    });

  }
}

