import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:solution21/diet.dart';
import 'package:solution21/dietContent.dart';
import 'package:solution21/drawer.dart';
import 'package:solution21/featuresDisplay.dart';

class SelectionPage extends StatefulWidget 
{
  final String selectionUserId;
  final String trimesterSelection;

  const SelectionPage({Key key, this.selectionUserId, this.trimesterSelection}) : super(key: key);
  @override
  _SelectionPageState createState() => _SelectionPageState();
}

class _SelectionPageState extends State<SelectionPage> 
{
    String userEmail,userName,phoneNumber,trimesterText;

    
  @override
  Widget build(BuildContext context) {

    if(widget.trimesterSelection=="T1")
    trimesterText="trimester1";
    else if(widget.trimesterSelection=="T2")
    trimesterText="trimester2";
    else
    trimesterText="trimester3";

    return StreamBuilder(

      
      stream: Firestore.instance
                   .collection('users')                            
                        .document(widget.selectionUserId)
                        .snapshots(),
      builder:(context,snapshot)
      {

        userName=snapshot.data["name"].toString();
        userEmail=snapshot.data["email"].toString();
        phoneNumber=snapshot.data["phone"].toString();


      return Scaffold(

         drawer: drawerApp(userName, userEmail, phoneNumber,widget.selectionUserId),

         appBar: AppBar
      (
        title: Text(widget.trimesterSelection, style: TextStyle(color: Colors.black),),

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
            image: new AssetImage("assets/images/selection.jpg"),
            fit: BoxFit.cover,
          ),
        ),


        child:Row
        (
          mainAxisAlignment: MainAxisAlignment.center,
          children: 
          [

            Column
            (
              children: 
              [

                SizedBox(height:100),

                 InkWell(
                                    child: Container(
                      height: 100.0,
                      width: 100.0,
                      decoration: BoxDecoration(
                        border: Border.all(width: 3, color: Colors.black),
                        image: DecorationImage(
                            image: new AssetImage(
                                "assets/images/development_selection.jpg"),
                            fit: BoxFit.cover),
                        shape: BoxShape.circle,
                      ),
                    ),

                     onTap: (){
                       Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FeaturesDisplay(featuresTitle:"development",
                                    featuresTrimester:trimesterText,image: "assets/images/fetus2.jpg",)),
                              );
                    },
                 ),

                  Text('Development',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold)
                      ),

                      SizedBox(height:90),


                   InkWell(
                                        child: Container(
                      height: 100.0,
                      width: 100.0,
                      decoration: BoxDecoration(
                        border: Border.all(width: 3, color: Colors.black),
                        image: DecorationImage(
                            image: new AssetImage(
                                "assets/images/yoga_selection.jpg"),
                            fit: BoxFit.cover),
                        shape: BoxShape.circle,
                      ),
                  ),

                   onTap: (){
                       Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FeaturesDisplay(featuresTitle:"yoga",
                                    featuresTrimester:trimesterText,image: "assets/images/yoga.jpg",)),
                              );
                    },


                   ),


                  Text('Yoga',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold)
                      ),

                      SizedBox(height:90),

                InkWell(
                       child: Container(
                      height: 100.0,
                      width: 100.0,
                      decoration: BoxDecoration(
                        border: Border.all(width: 3, color: Colors.black),
                        image: DecorationImage(
                            image: new AssetImage(
                                "assets/images/activities_selection.jpg"),
                            fit: BoxFit.cover),
                        shape: BoxShape.circle,
                      ),
                    ),

                    onTap: (){
                       Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FeaturesDisplay(featuresTitle:"activities",
                                    featuresTrimester:trimesterText,image: "assets/images/284594780-H.jpg",)),
                              );
                    },
                ),

                  Text('Activities',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold)
                      )

              ],
            ),

            Column(
              children:
              [
                SizedBox(width:50)
              ]
            ),

             Column
            (
              children: 
              [

                SizedBox(height:190),

                 InkWell(
                                    child: Container(
                      height: 100.0,
                      width: 100.0,
                      decoration: BoxDecoration(
                        border: Border.all(width: 3, color: Colors.black),
                        image: DecorationImage(
                            image: new AssetImage(
                                "assets/images/diet_selection.webp"),
                            fit: BoxFit.cover),
                        shape: BoxShape.circle,
                      ),
                    ),

                     onTap: (){
                       Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DietPage(dietTrimester:trimesterText)),
                              );
                    },
                 ),

                  Text('Diet',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold)
                      ),

                      SizedBox(height:90),


                   InkWell(
                                        child: Container(
                      height: 100.0,
                      width: 100.0,
                      decoration: BoxDecoration(
                        border: Border.all(width: 3, color: Colors.black),
                        image: DecorationImage(
                            image: new AssetImage(
                                "assets/images/timetable_selection.jpg"),
                            fit: BoxFit.cover),
                        shape: BoxShape.circle,
                      ),
                  ),

                   onTap: (){
                       Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FeaturesDisplay(featuresTitle:"clothing",
                                    featuresTrimester:trimesterText,image: "assets/images/timetable-page.jpg",)),
                              );
                    },
                   ),


                  Text('Clothing',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold)
                      ),

                      SizedBox(height:90),

                InkWell(
                                  child: Container(
                      height: 100.0,
                      width: 100.0,
                      decoration: BoxDecoration(
                        border: Border.all(width: 3, color: Colors.black),
                        image: DecorationImage(
                            image: new AssetImage(
                                "assets/images/spiritual_selection.webp"),
                            fit: BoxFit.cover),
                        shape: BoxShape.circle,
                      ),
                    ),

                     onTap: (){
                       Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FeaturesDisplay(featuresTitle:"spiritual",
                                    featuresTrimester:trimesterText,image: "assets/images/spiritual.webp",)),
                              );
                    },

                ),

                  Text('Spiritual Chants',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold)
                      )
                
              ],
            ),


          ],
        )

      ),

    );


      }
    );


    
  }
}
