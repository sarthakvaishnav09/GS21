import 'package:flutter/material.dart';
import 'package:solution21/dietContent.dart';
import 'package:solution21/mental_health.dart';

class DietPage extends StatefulWidget 
{
  final String dietTrimester;

  const DietPage({Key key, this.dietTrimester}) : super(key: key);
  @override
  DietPageState createState() => DietPageState();
}

class DietPageState extends State<DietPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
         iconTheme: IconThemeData(
            color: Colors.black, //change your color here
          ),
      ),
      
      extendBodyBehindAppBar: true,


        body: Container(
          alignment: Alignment.center,
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new AssetImage("assets/images/diet.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [


              Container(
                  padding: EdgeInsets.only(top: 100),
                  child: (Column(children: [
                    Text(
                      'Diet',
                      textAlign: TextAlign.start,
                      style: TextStyle(color: Colors.black, fontSize: 40),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: ButtonTheme(
                        minWidth: 300.0,
                        height: 56.0,
                        child: Opacity(
                          opacity: 0.7,
                          child: RaisedButton(
                            // padding: const EdgeInsets.only(right: 200),
                            textColor: Colors.black,
                            color: Colors.white,
                            child: Text(
                              "Breakfast",
                              style: TextStyle(fontSize: 25.0),
                            ),
                            onPressed: () 
                            {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DietContent(dietContentTrimester: widget.dietTrimester,
                                                           dietContentTitle: "breakfast",
                                                           dietContentImage: "assets/images/breakfast.jpg",)),
                              );

                            },
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: ButtonTheme(
                        minWidth: 300.0,
                        height: 56.0,
                        child: Opacity(
                          opacity: 0.7,
                          child: RaisedButton(
                            // padding: const EdgeInsets.only(right: 200),
                            textColor: Colors.black,
                            color: Colors.white,
                            child: Text(
                              "Lunch",
                              style: TextStyle(fontSize: 25.0),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DietContent(dietContentTrimester: widget.dietTrimester,
                                                                          dietContentTitle: "lunch",
                                                           dietContentImage: "assets/images/lunch.jpg",)),
                              );



                            },
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: ButtonTheme(
                        minWidth: 300.0,
                        height: 56.0,
                        child: Opacity(
                          opacity: 0.7,
                          child: RaisedButton(
                            // padding: const EdgeInsets.only(right: 200),
                            textColor: Colors.black,
                            color: Colors.white,
                            child: Text(
                              "Snacks",
                              style: TextStyle(fontSize: 25.0),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DietContent(dietContentTrimester: widget.dietTrimester,
                                                          dietContentTitle: "snacks",
                                                          dietContentImage: "assets/images/snacks.jpg",)),
                              );

                            },
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: ButtonTheme(
                        minWidth: 300.0,
                        height: 56.0,
                        child: Opacity(
                          opacity: 0.7,
                          child: RaisedButton(
                            // padding: const EdgeInsets.only(right: 200),
                            textColor: Colors.black,
                            color: Colors.white,
                            child: Text(
                              "Dinner",
                              style: TextStyle(fontSize: 25.0),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DietContent(dietContentTrimester: widget.dietTrimester,
                                                                        dietContentTitle: "dinner",
                                                                        dietContentImage: "assets/images/dinner.jpeg",)),
                              );

                            },
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: ButtonTheme(
                        minWidth: 300.0,
                        height: 56.0,
                        child: Opacity(
                          opacity: 0.7,
                          child: RaisedButton(
                            // padding: const EdgeInsets.only(right: 200),
                            textColor: Colors.black,
                            color: Colors.white,
                            child: Text(
                              "What not to eat?",
                              style: TextStyle(fontSize: 25.0),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DietContent(dietContentTrimester: widget.dietTrimester,
                                                            dietContentTitle: "what not to eat?",
                                                            dietContentImage: "assets/images/avoid-eating.jpg",)),
                              );

                            },
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ]))),
            ],
          ),
        ),
   
        
        );
  }
}
