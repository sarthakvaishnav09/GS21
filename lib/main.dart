
import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:solution21/home.dart';
import 'package:firebase_core/firebase_core.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget 
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;
  


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> 
{

  FirebaseAuth auth = FirebaseAuth.instance;
  FirebaseUser currentUser;
  
  

  final numberController = TextEditingController();

  final loginEmailController = TextEditingController();
  final loginPasswordController= TextEditingController();

  final signupEmailController = TextEditingController();
  final signupPhoneNumberController = TextEditingController();
  final signupPasswordController = TextEditingController();
  final signupConfirmPasswordController = TextEditingController();
  final signupNameController = TextEditingController();


  @override
  void initState() {
    super.initState();
    getCurrentUser();
  }

  void getCurrentUser() async {
    currentUser = await FirebaseAuth.instance.currentUser();
    print(currentUser);
  }

  @override
  Widget build(BuildContext context) 
  {

    Timer(
      Duration(seconds: 2),
      () 
       {
         if(currentUser!=null)
        { 
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => HomePage(userId: currentUser.uid.toString())),
           );
        }
      }
    );


    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    print(h);
    print(w);

    return Scaffold(
         
        // resizeToAvoidBottomInset: false,
         //resizeToAvoidBottomPadding: true,
      body: Container(
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage("assets/images/login.jpg"),
            alignment: Alignment.topLeft,
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            padding: EdgeInsets.only(top: 150),
            child: DefaultTabController(
              length: 2,
              child: Scaffold(
                resizeToAvoidBottomInset: false,
                backgroundColor: Color(0x00000),
                appBar: TabBar(
                  indicatorColor: Colors.white,
                  labelStyle:
                      TextStyle(fontSize: w*0.0729, fontFamily: 'Family Name'),//30
                  unselectedLabelStyle:
                      TextStyle(fontSize: w*0.0486, fontFamily: 'Family Name'),//20
                  tabs: [
                    Tab(text: 'Login'),
                    Tab(text: 'SignUp'),
                  ],
                ),
                body: TabBarView(
                  children: [
                    SingleChildScrollView(
                                          child: Column(children: [
                        SizedBox(
                          height: h*0.0592,//50
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 55),
                          child: TextField(
                            controller: loginEmailController,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              hintText: 'Email',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40.0),
                                borderSide:
                                    BorderSide(width: 1, color: Colors.red),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: h*0.0355,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 55),
                          child: TextField(
                            controller: loginPasswordController,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              hintText: 'Password',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40.0),
                                borderSide: new BorderSide(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 0.0237,//20
                        ),
                        Text(
                          'Forgot Password?',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        SizedBox(
                          height: 0.0829*h,
                        ),



                        Builder(
                         builder: (context) => ButtonTheme(
                                           minWidth: w*0.56147,
                            height: h*0.06639,
                            child: Opacity(
                              opacity: 0.7,
                              child: RaisedButton(
                                textColor: Colors.black,
                                color: Colors.white,
                                child: Text(
                                  "Login",
                                  style: TextStyle(fontSize: w*0.05833),
                                ),
                                onPressed: () {
                                  // Navigator.push(
                                  //   context,
                                  //   MaterialPageRoute(
                                  //       builder: (context) => HomePage()),
                                  // );

                                  if(loginEmailController.text.trim()=='')
                                  {
                                     Scaffold.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text('Enter your Email'),
                                            ),
                                          );

                                  }
                                  else if(loginPasswordController.text.trim()=='')
                                  {
                                     Scaffold.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text('Enter your Password'),
                                            ),
                                          );

                                  }

                                  else
                                  {

                                    //String userEmail,userName,phoneNumber;



                                    
                                    auth.signInWithEmailAndPassword(
                                        email: loginEmailController.text.trim(), password: loginPasswordController.text.trim())
                                    .then((result) 
                                    {


                                    Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(builder: (context) => HomePage(userId: result.user.uid.toString())),
                                    );
                                }).catchError((err) {
                                    print(err.message);
                                    showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                        return AlertDialog(
                                            title: Text("Error"),
                                            content: Text(err.message),
                                            actions: [
                                            TextButton(
                                                child: Text("Ok"),
                                                onPressed: () {
                                                Navigator.of(context).pop();
                                                },
                                            )
                                            ],
                                        );
                                        });
                                });
                                  }
                                },
                                shape: new RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(30.0),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 0.0592,
                        ),
                        Text(
                          '------or SignUp with------',
                          style: TextStyle(color: Colors.white, fontSize: 24),
                        ),
                        SizedBox(
                          height: h*0.0355,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 55),
                          child: Container(
                            height: h*0.0592,
                            width: w*0.1215,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      new AssetImage("assets/images/google1.jpg"),
                                  fit: BoxFit.cover),
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                      ]),
                    ),


                    SingleChildScrollView(
                      
                     // reverse: true,
                      child: Column(children: [
                        SizedBox(
                          height: 50,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 55),
                          child: TextField(
                            controller: signupNameController,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              hintText: 'Enter Name',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40.0),
                                borderSide: new BorderSide(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: h*0.0355,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 55),
                          child: TextField(
                            controller: signupPhoneNumberController,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              hintText: 'Enter Phone no',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40.0),
                                borderSide: new BorderSide(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: h*0.0355,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 55),
                          child: TextField(
                            controller: signupEmailController,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              hintText: 'Enter Email',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40.0),
                                borderSide: new BorderSide(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: h*0.0355,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 55),
                          child: TextField(
                            controller: signupPasswordController,
                            obscureText: true,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              hintText: 'Set a Password',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40.0),
                                borderSide: new BorderSide(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: h*0.0355,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 55),
                          child: TextField(
                            controller: signupConfirmPasswordController,
                            obscureText: true,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              hintText: 'Confirm Password',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40.0),
                                borderSide: new BorderSide(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: h*0.0355,
                        ),
                        Builder(
                          builder: (context) => ButtonTheme(
                            minWidth: 0.486*w,
                            height: h*0.066,
                            child: Opacity(
                              opacity: 0.7,
                              child: RaisedButton(
                                textColor: Colors.black,
                                color: Colors.white,
                                child: Text(
                                  "Register",
                                  style: TextStyle(fontSize: 24.0),
                                ),
                                onPressed: () 
                                {

                                  if( signupNameController.text.trim()=='')
                                  {
                                    // final snackBar = SnackBar(content: Text('Yay! A SnackBar!'));
                                    // ScaffoldMessenger.of(context).showSnackBar(snackBar);

                                    // Scaffold.of(context).showSnackBar(
                                    // SnackBar(
                                    //   content: Text('Enter all the details'),
                                    //         ),
                                    //       );
                                     Scaffold.of(context).showSnackBar(SnackBar(
                                    content: Text('Enter your name'),
                                    duration: Duration(seconds: 3),
                                  ));
                                   
                                    
                                  }

                                  else if(signupPhoneNumberController.text.trim()=='')
                                  {
                                     Scaffold.of(context).showSnackBar(SnackBar(
                                    content: Text('Enter your Phone Number'),
                                    duration: Duration(seconds: 3),
                                  ));

                                  }
                                  else if(signupEmailController.text.trim()=='')
                                  {
                                     Scaffold.of(context).showSnackBar(SnackBar(
                                    content: Text('Enter your Email'),
                                    duration: Duration(seconds: 3),
                                  ));

                                  }

                                   else if(signupPasswordController.text.trim()=='')
                                  {
                                     Scaffold.of(context).showSnackBar(SnackBar(
                                    content: Text('Enter your Password'),
                                    duration: Duration(seconds: 3),
                                  ));

                                  }

                                   else if(signupConfirmPasswordController.text.trim()=='')
                                  {
                                     Scaffold.of(context).showSnackBar(SnackBar(
                                    content: Text('Confirm your password'),
                                    duration: Duration(seconds: 3),
                                  ));

                                  }

                                  else if(signupPasswordController.text != signupConfirmPasswordController.text)
                                  {
                                      Scaffold.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text('Passwords do not match'),
                                            ),
                                          );
                                  }

                                               else
                                                {
                                                  auth.createUserWithEmailAndPassword(
                                                    email: signupEmailController.text.trim(), password: signupConfirmPasswordController.text.trim())
                                                .then((result) {
                                              Firestore.instance.collection("users").document(result.user.uid).setData(
                                              {
                                                "email": signupEmailController.text.trim(),
                                                "name": signupNameController.text.trim(),
                                                "phone": signupPhoneNumberController.text.trim(),
                                              }).then((res) {
                                                Navigator.pushReplacement(
                                                  context,
                                                  MaterialPageRoute(builder: (context) => HomePage(userId: result.user.uid.toString())),
                                                );
                                              }).catchError((err2)
                                              {
                                                print(err2.toString());
                                                showDialog(
                                                  context: context,
                                                  builder: (BuildContext context) {
                                                    return AlertDialog(
                                                      title: Text("Error"),
                                                      content: Text(err2.message),
                                                      actions: [
                                                        FlatButton(
                                                          child: Text("Ok"),
                                                          onPressed: () {
                                                            Navigator.of(context).pop();
                                                          },
                                                        )
                                                      ],
                                                    );
                                                  });

                                              });
                                            }).catchError((err) {
                                              showDialog(
                                                  context: context,
                                                  builder: (BuildContext context) {
                                                    return AlertDialog(
                                                      title: Text("Error"),
                                                      content: Text(err.message),
                                                      actions: [
                                                        FlatButton(
                                                          child: Text("Ok"),
                                                          onPressed: () {
                                                            Navigator.of(context).pop();
                                                          },
                                                        )
                                                      ],
                                                    );
                                                  });
                                            });
                                        }
                                          
                                },
                                shape: new RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(30.0),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ]),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      
      
      
    );
    
  }
}
