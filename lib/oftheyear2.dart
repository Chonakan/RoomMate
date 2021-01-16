import 'package:flutter/material.dart';
import 'package:roommate_app_project/FinalHome.dart';

class Ofyear2page extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Ofyear2State();
  }
}

class Ofyear2State extends State<Ofyear2page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/Floral Wallpaper.png'),
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
                        padding: EdgeInsets.fromLTRB(55, 0, 10, 0),
                        child: RichText(
                            text: TextSpan(
                          text: 'Abbe Fenimore',
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
                          'Floral Wallpaper',
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
                                  image:
                                      AssetImage('assets/Abbe Fenimore.jpeg'),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                      Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 20, 10, 0),
                                child: RichText(
                                    text: TextSpan(
                                  text: 'Abbe Fenimore',
                                  style: TextStyle(
                                      color: Color(0xff00c8).withOpacity(0.25),
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
                          'If the thought of flower-power wallpaper makes you flinch, then 2020 might just be the year you change your tune. Floral wallpaper has been around for years and you will continue to see the pretty pattern but with a much more modern update, says interior designer Abbe Fenimore, founder of Studio Ten 25. Large scale, bold color, and even metallic versions are here to stay. Fenimore says they are a particularly good choice in powder bathrooms and foyers. Plus, there are tons of stick-on options if you are not ready to fully commit.',
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
