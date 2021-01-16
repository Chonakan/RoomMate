import 'package:flutter/material.dart';
import 'package:roommate_app_project/FinalHome.dart';

class Ofyear3page extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Ofyear3State();
  }
}

class Ofyear3State extends State<Ofyear3page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/High-Contrast Decor.jpeg'),
                    fit: BoxFit.cover)),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 50, 10, 10),
            child: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FinalHomepage()));
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(45, 410, 0, 0),
            child: Container(
                height: double.infinity,
                width: 500,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(30)))),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(55, 435, 15, 0),
            child: Container(
              height: double.infinity,
              width: 480,
              //color: Colors.redAccent,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(30, 0, 10, 0),
                        child: Text(
                          'Trends for 2020',
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(65, 0, 10, 0),
                        child: RichText(
                            text: TextSpan(
                          text: 'Bria Hammel',
                          style: TextStyle(
                              color: Colors.black.withOpacity(0.25),
                              fontWeight: FontWeight.bold,
                              fontSize: 13),
                        )),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(30, 30, 10, 0),
                        child: Text(
                          'High-Contrast \nDecor design',
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(30, 30, 10, 10),
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Color(0xAA353546),
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage('assets/Bria Hammel.jpeg'),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                      Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 20, 25, 0),
                                child: RichText(
                                    text: TextSpan(
                                  text: 'Bria Hammel',
                                  style: TextStyle(
                                      color:
                                          Color(0xAA00822e).withOpacity(0.25),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13),
                                )),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: RichText(
                                text: TextSpan(
                              text: 'Interior Designer',
                              style: TextStyle(
                                  color: Colors.black.withOpacity(0.25),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13),
                            )),
                          ),
                        ],
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(25, 30, 45, 25),
                        child: Text(
                          'High-contrast designs are currently having a moment — which means if you have always wanted to paint your home black, now is the time to give it a whirl (in moderation, of course). For a long time, it was white, white, white, Hammel says. But now, for example, maybe we see a chair with black fabric and a white frame. Or a console table in a dark stained wood with light-colored hardware."',
                          style: TextStyle(fontSize: 13),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
