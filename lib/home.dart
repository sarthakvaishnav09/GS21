import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:solution21/drawer.dart';
import 'package:solution21/main.dart';

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

        backgroundColor: Colors.transparent,
        elevation: 0,
        
      ),
      extendBodyBehindAppBar: true,
      


      body: Container(
        alignment: Alignment.center,
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage("assets/images/homepage.jpg"),
            fit: BoxFit.cover,
          ),
        ),

        child: Column(
                  children:
                  [
                    //Text(widget.userId),

                  ]
        )
      ),
      //drawer:drawerApp(userName,userEmail,phoneNumber),

      drawer: drawerApp(userName, userEmail, phoneNumber),
      
    );
    });
    

    // getCurrentUser();

    // return Scaffold
    // (
    //   appBar: AppBar
    //   (
    //     iconTheme: IconThemeData
    //     (
    //         color: Colors.black, //change your color here
    //     ),

    //     backgroundColor: Colors.transparent,
    //   ),


    //   body: Container(
    //     alignment: Alignment.center,
    //     decoration: new BoxDecoration(
    //       image: new DecorationImage(
    //         image: new AssetImage("assets/images/homepage.jpg"),
    //         fit: BoxFit.cover,
    //       ),
    //     ),

    //     child: Column(
    //               children:
    //               [


    //                 Text(widget.userId),
                    
                    
    //                     TextButton(
    //                       child: Text("Logout"),
    //                       onPressed: () 
    //                       {
    //                         _signOut();

    //                         Navigator.pushReplacement(
    //                           context,
    //                           MaterialPageRoute(builder: (context) => MyApp()),
    //                         );
    //                       },
    //                   ),
    //               ]
    //     )
    //   ),
    //   //drawer:drawerApp(userName,userEmail,phoneNumber),

    //   drawer: StreamBuilder(stream: Firestore.instance.
    //                           collection("users").document(widget.userId).snapshots(),
    //                           builder: (context,snapshot)
    //                           {
    //                             return drawerApp(snapshot.data["name"], snapshot.data["email"], snapshot.data["phone"]);
    //                           },),
      
    // );


  }
}