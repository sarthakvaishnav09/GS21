import 'package:flutter/material.dart';
import 'package:solution21/selection.dart';

class BabyGrowth extends StatefulWidget 
{
  final String growthUserId;

  const BabyGrowth({Key key, @required this.growthUserId}) : super(key: key);
  @override
  BabyGrowthState createState() => BabyGrowthState();
}

class BabyGrowthState extends State<BabyGrowth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
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
              image: new AssetImage("assets/images/trimester.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              Container(
                  padding: EdgeInsets.only(top: 70),
                  child: (Column(children: [
                    Text(
                      'What is ANC?',
                      textAlign: TextAlign.start,
                      style: TextStyle(color: Colors.black, fontSize: 50),
                    ),

                    Padding(
                      padding: EdgeInsets.all(20),
                                          child: Text(
                        """Systemic supervision of a woman during pregnancy is called as Anti-Natal Care (ANC).

Aim: To ensure normal pregnancy with a normal delivery of a healthy baby from a healthy mother.""",
                        textAlign: TextAlign.start,
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),

                    
                    SizedBox(
                      height: 100,
                    ),

                   // Text(widget.growthUserId),


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
                              "1st Trimester",
                              style: TextStyle(fontSize: 25.0),
                            ),

                            onPressed: () {
                              Icon(Icons.play_arrow);
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SelectionPage(selectionUserId:widget.growthUserId,trimesterSelection: "T1",)),
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
                              "2nd Trimester",
                              style: TextStyle(fontSize: 25.0),
                            ),
                            onPressed: () {
                               Icon(Icons.play_arrow);
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SelectionPage(selectionUserId:widget.growthUserId,trimesterSelection:"T2" ,)),
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
                              "3rd Trimester",
                              style: TextStyle(fontSize: 25.0),
                            ),
                            onPressed: () {
                               Icon(Icons.play_arrow);
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SelectionPage(selectionUserId:widget.growthUserId,trimesterSelection:"T3")),
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
