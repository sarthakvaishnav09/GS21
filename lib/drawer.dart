import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:solution21/extraFeature.dart';
import 'package:solution21/home.dart';
import 'package:solution21/selection.dart';

import 'main.dart';

class drawerApp extends StatefulWidget 
{
 // final BuildContext _context2;
  final String _userName;
  final String _userEmail;
  final String _userPhoneNumber;
  final String _userId;

  drawerApp( this._userName, this._userEmail, this._userPhoneNumber, this._userId);

  @override
  _drawerAppState createState() => _drawerAppState();
}

class _drawerAppState extends State<drawerApp> 
{

    Future<void> _signOut() async 
  {
  await FirebaseAuth.instance.signOut();
  }

  
  @override
  Widget build(BuildContext context) {
    return Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[

                Container(
                  height: 250,
                                  child: DrawerHeader
                  (
                    decoration: BoxDecoration
                    (
                      color: Color(0xFF81D4FA   ),
                      //F9E79F, A9DFBF, 85C1E9, FADBD8, #81D4FA
                    ),

                    child: Column
                    (
                      crossAxisAlignment: CrossAxisAlignment.start,
                     
                      children:
                      [

                        Container
                        (
                          child: Center
                          (
                            child: Icon(Icons.account_circle,size: 100,)
                          )
                        ),
                        //Text("Name: ",style: TextStyle(fontSize:20),),
                        Text(widget._userName,style: TextStyle(fontSize:17),),
                       // Text("Email: ",style: TextStyle(fontSize:20),),
                        Text(widget._userEmail,style: TextStyle(fontSize:17),),
                        //Text("Phone: ",style: TextStyle(fontSize:20),),
                        Text(widget._userPhoneNumber,style: TextStyle(fontSize:17),),
                      ]
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(top:4,left:3),
                                  child: ListTile(
                    leading: Icon(Icons.home,size: 40,color: Colors.black,),
                    title: Text('Home',style: TextStyle(fontSize: 18)),
                    onTap: () 
                    {
                       Navigator.of(context).pop();
                       
                       Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage(userId: widget._userId,)),
                        );

                        //Navigator.popUntil(context, (route) => false);


                    },
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(top:4,left:3),
                                  child: ListTile(
                    leading: Container
                           (
                             height: 40,
                             width: 40,
                             child: Image.asset("assets/images/prenatal.png",)
                            ),
                    title: Text('Benefits of ANC',style: TextStyle(fontSize: 18)),
                    onTap: () 
                    {
                       Navigator.of(context).pop();

                        Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) =>ExtraFeature(EFname: widget._userName,
                                                                                     EFemail: widget._userEmail,
                                                                                      EFphone: widget._userPhoneNumber, 
                                                                                      EFimage: "assets/images/prenatal.png",
                                                                                      EFtitle: "benefits of ANC",)),
                              );

                        //Navigator.popUntil(context, (route) => false);


                    },
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(top:20,left:3),
                  child: ListTile(
                           leading: Container
                           (
                             height: 40,
                             width: 40,
                             child: Image.asset("assets/images/pregnancy-test-img.png",)
                            ),
                    title: Text('Trimester 1',style: TextStyle(fontSize: 18)),
                    onTap: () 
                    {
                       Navigator.of(context).pop();

                          Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SelectionPage(selectionUserId:widget._userId , trimesterSelection: "T1",)),
                        );

                    },
                  ),
                ),

                 Padding(
                  padding: EdgeInsets.only(top:20,left:3),
                  child: ListTile(
                           leading: Container
                           (
                             height: 40,
                             width: 40,
                             child: Image.asset("assets/images/fetus.png",)
                            ),
                    title: Text('Trimester 2',style: TextStyle(fontSize: 18)),
                    onTap: () 
                    {
                       Navigator.of(context).pop();

                       Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SelectionPage(selectionUserId:widget._userId , trimesterSelection: "T2",)),
                        );

                    },
                  ),
                ),

                 Padding(
                  padding: EdgeInsets.only(top:20,left:3),
                  child: ListTile(
                           leading: Container
                           (
                             height: 40,
                             width: 40,
                             child: Image.asset("assets/images/pregnant.png",)
                            ),
                    title: Text('Trimester 3',style: TextStyle(fontSize: 18)),
                    onTap: () 
                    {

                       Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SelectionPage(selectionUserId:widget._userId , trimesterSelection: "T3",)),
                        );

                    },
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(top:20,left:3),
                  child: ListTile(
                           leading: Container
                           (
                             height: 40,
                             width: 40,
                             child: Image.asset("assets/images/water-drop.png",)
                            ),
                    title: Text('Water Requirement',style: TextStyle(fontSize: 18)),
                    onTap: () 
                    {

                      Navigator.of(context).pop();

                       Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) =>ExtraFeature(EFname: widget._userName,
                                                                                     EFemail: widget._userEmail,
                                                                                      EFphone: widget._userPhoneNumber, 
                                                                                      EFimage: "assets/images/water_bg.jpg",
                                                                                      EFtitle: "water",)),
                              );

                              

                    },
                  ),
                ),

                Padding(padding: EdgeInsets.only(top:20,left:3),
                                  child: ListTile(
                    leading: Icon(Icons.logout,size: 40,color: Colors.black,),
                    title: Text('Logout',style: TextStyle(fontSize: 18)),
                    
                    onTap: () 
                    {
                       _signOut();

                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(builder: (context) => MyApp()),
                              );

                    },
                  ),
                ),


              ],
            ),
          );
  }
}