import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:solution21/home.dart';
import 'package:solution21/selection.dart';
import 'package:solution21/timetable.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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

class _MyHomePageState extends State<MyHomePage> {
  final numberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    print(h);
    print(w);

    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                      TextStyle(fontSize: 30.0, fontFamily: 'Family Name'),
                  unselectedLabelStyle:
                      TextStyle(fontSize: 20.0, fontFamily: 'Family Name'),
                  tabs: [
                    Tab(text: 'Login'),
                    Tab(text: 'SignUp'),
                  ],
                ),
                body: TabBarView(
                  children: [
                    Column(children: [
                      SizedBox(
                        height: 50,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 55),
                        child: TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            hintText: 'Login',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40.0),
                              borderSide:
                                  BorderSide(width: 1, color: Colors.red),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 55),
                        child: TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            hintText: 'Email',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40.0),
                              borderSide: new BorderSide(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Forgot Password',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      SizedBox(
                        height: 70,
                      ),
                      ButtonTheme(
                        minWidth: 231.0,
                        height: 56.0,
                        child: Opacity(
                          opacity: 0.7,
                          child: RaisedButton(
                            textColor: Colors.black,
                            color: Colors.white,
                            child: Text(
                              "Login",
                              style: TextStyle(fontSize: 32.0),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TimeTablePage()),
                              );
                            },
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30.0),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Text(
                        '------or SignUp with------',
                        style: TextStyle(color: Colors.white, fontSize: 24),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 55),
                        child: Container(
                          height: 50.0,
                          width: 50.0,
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
                    Column(children: [
                      SizedBox(
                        height: 50,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 55),
                        child: TextField(
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
                        height: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 55),
                        child: TextField(
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
                        height: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 55),
                        child: TextField(
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
                        height: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 55),
                        child: TextField(
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
                        height: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 55),
                        child: TextField(
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
                        height: 30,
                      ),
                      ButtonTheme(
                        minWidth: 231.0,
                        height: 56.0,
                        child: Opacity(
                          opacity: 0.7,
                          child: RaisedButton(
                            textColor: Colors.black,
                            color: Colors.white,
                            child: Text(
                              "Register",
                              style: TextStyle(fontSize: 32.0),
                            ),
                            onPressed: () {},
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30.0),
                            ),
                          ),
                        ),
                      ),
                    ]),
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
