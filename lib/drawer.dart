import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class drawerApp extends StatefulWidget 
{
 // final BuildContext _context2;
  final String _userName;
  final String _userEmail;
  final String _userPhoneNumber;

  drawerApp( this._userName, this._userEmail, this._userPhoneNumber);

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

                DrawerHeader(
                  decoration: BoxDecoration(
                    color: Color(0xFFFF9BD7),
                  ),

                  child: Column
                  (
                    crossAxisAlignment: CrossAxisAlignment.start,
                   
                    children:
                    [
                      //Text("Name: ",style: TextStyle(fontSize:20),),
                      Text(widget._userName,style: TextStyle(fontSize:18),),
                     // Text("Email: ",style: TextStyle(fontSize:20),),
                      Text(widget._userEmail,style: TextStyle(fontSize:18),),
                      //Text("Phone: ",style: TextStyle(fontSize:20),),
                      Text(widget._userPhoneNumber,style: TextStyle(fontSize:18),),
                    ]
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(top:4,left:3),
                                  child: ListTile(
                    leading: Icon(Icons.home,size: 55,color: Colors.black,),
                    title: Text('Home',style: TextStyle(fontSize: 20)),
                    onTap: () 
                    {

                    },
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(top:20,left:3),
                  child: ListTile(
                           leading: Image.asset("assets/images/pregnancy-test-img.png",),


                    title: Text('Trimester 1',style: TextStyle(fontSize: 20)),
                    onTap: () 
                    {

                    },
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(top:20,left:3),
                                  child: ListTile(
                    leading: Image.asset("assets/images/fetus.png"),
                    title: Text('Trimester 2',style: TextStyle(fontSize: 20)),
                    
                    onTap: () 
                    {

                    },
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(top:20,left:3),
                                  child: ListTile(
                    leading: Image.asset("assets/images/pregnant.png"),
                    title: Text('Trimester 3',style: TextStyle(fontSize: 20)),
                    
                    onTap: () 
                    {

                    },
                  ),
                ),

                Padding(padding: EdgeInsets.only(top:20,left:3),
                                  child: ListTile(
                    leading: Icon(Icons.logout,size: 55,color: Colors.black,),
                    title: Text('Logout',style: TextStyle(fontSize: 20)),
                    
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