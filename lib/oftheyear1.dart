import 'package:flutter/material.dart';
import 'package:roommate_app_project/FinalHome.dart';

class Ofyear1page extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Ofyear1State();
  }
}

class Ofyear1State extends State<Ofyear1page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/Navyblue.jpg'),
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
                        padding: EdgeInsets.fromLTRB(75, 0, 10, 0),
                        child: RichText(
                            text: TextSpan(
                          text: 'Kerrie Kelly',
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
                          'Navy Blue',
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.bold),
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
                                image: AssetImage('assets/Kerrie-Kelly.jpg'),
                              )),
                        ),
                      ),
                      Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 20, 30, 0),
                                child: RichText(
                                    text: TextSpan(
                                  text: 'Kerrie Kelly',
                                  style: TextStyle(
                                      color: Color(0x0017ff).withOpacity(0.25),
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
                          'The 2020 Pantone Color of the Year is Classic Blue (a navy shade), which means you can expect to see a lot of the color in the new year. Fortunately, its totally versatile and sophisticated. Navy blue provides the perfect amount of contrast for interiors and exteriors in both traditional and modern home styles,says interior designer Kerrie Kelly, founder of Kerrie Kelly Design Lab. Whether a kitchen island gets a quick upgrade or a room gets a dramatic new look with contrasting white trim and woodwork, the shade provides a stately look without going completely black',
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
