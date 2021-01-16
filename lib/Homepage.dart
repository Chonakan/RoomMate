import 'package:flutter/material.dart';
import 'package:roommate_app_project/Bedroomcatalog.dart';
import 'package:roommate_app_project/oftheyear1.dart';

import 'Livingroomcatalog.dart';
import 'kitchenroomcatalog.dart';
import 'oftheyear2.dart';
import 'oftheyear3.dart';

class Bodydesign extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Homedesign();
  }
}

class Homedesign extends State<Bodydesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(25, 30, 200, 12),
                child: Text(
                  "Catalog Of \nDesign",
                  style: TextStyle(
                    fontSize: 25,
                    color: Color(0xff000000),
                    //fontFamily: "RobotoMono",
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                width: double.maxFinite,
                height: 295,
                //color: Colors.red,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Bedroompage()));
                            },
                            child: Container(
                              height: 200,
                              width: 128,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0xAA363636),
                                    offset: const Offset(3.0, 4.0),
                                    blurRadius: 5.0,
                                    spreadRadius: 1.0,
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(22),
                                image: DecorationImage(
                                  image: AssetImage('assets/bedroom.jpg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 13,
                          ),
                          Text('Bedroom'),
                          SizedBox(
                            height: 5,
                          ),
                          RichText(
                              text: TextSpan(
                            text: 'Suggestion',
                            style:
                                TextStyle(color: Colors.black.withOpacity(0.4)),
                          )),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Livingroompage()));
                            },
                            child: Container(
                              height: 200,
                              width: 128,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0xAA363636),
                                    offset: const Offset(3.0, 4.0),
                                    blurRadius: 5.0,
                                    spreadRadius: 1.0,
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(22),
                                image: DecorationImage(
                                  image: AssetImage('assets/livingroom.jpg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 13,
                          ),
                          Text('Livingroom'),
                          SizedBox(
                            height: 5,
                          ),
                          RichText(
                              text: TextSpan(
                            text: 'Suggestion',
                            style:
                                TextStyle(color: Colors.black.withOpacity(0.4)),
                          )),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Kitchenpage()));
                            },
                            child: Container(
                              height: 200,
                              width: 128,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0xAA363636),
                                    offset: const Offset(3.0, 4.0),
                                    blurRadius: 5.0,
                                    spreadRadius: 1.0,
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(22),
                                image: DecorationImage(
                                  image: AssetImage('assets/kitchen.jpg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 13,
                          ),
                          Text('Kitchenroom'),
                          SizedBox(
                            height: 5,
                          ),
                          RichText(
                              text: TextSpan(
                            text: 'Suggestion',
                            style:
                                TextStyle(color: Colors.black.withOpacity(0.4)),
                          )),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(25, 30, 90, 12),
                child: Text(
                  "Top home decoration \ntrends for 2020",
                  style: TextStyle(
                    fontSize: 25,
                    color: Color(0xff000000),
                    //fontFamily: "RobotoMono",
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                width: double.maxFinite,
                height: 295,
                //color: Colors.white,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Ofyear1page()));
                            },
                            child: Container(
                              height: 200,
                              width: 128,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0xAA363636),
                                    offset: const Offset(3.0, 4.0),
                                    blurRadius: 5.0,
                                    spreadRadius: 1.0,
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(22),
                                image: DecorationImage(
                                  image: AssetImage('assets/Navyblue.jpg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 13,
                          ),
                          Text('Navy blue'),
                          SizedBox(
                            height: 5,
                          ),
                          RichText(
                              text: TextSpan(
                            text: 'Kerrie Kelly',
                            style:
                                TextStyle(color: Colors.black.withOpacity(0.4)),
                          )),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Ofyear2page()));
                            },
                            child: Container(
                              height: 200,
                              width: 128,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0xAA363636),
                                    offset: const Offset(3.0, 4.0),
                                    blurRadius: 5.0,
                                    spreadRadius: 1.0,
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(22),
                                image: DecorationImage(
                                  image:
                                      AssetImage('assets/Floral Wallpaper.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 13,
                          ),
                          Text('Floral Wallpaper'),
                          SizedBox(
                            height: 5,
                          ),
                          RichText(
                              text: TextSpan(
                            text: 'Abbe Fenimore',
                            style:
                                TextStyle(color: Colors.black.withOpacity(0.4)),
                          )),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Ofyear3page()));
                            },
                            child: Container(
                              height: 200,
                              width: 128,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0xAA363636),
                                    offset: const Offset(3.0, 4.0),
                                    blurRadius: 5.0,
                                    spreadRadius: 1.0,
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(22),
                                image: DecorationImage(
                                  image: AssetImage(
                                      'assets/High-Contrast Decor.jpeg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 13,
                          ),
                          Text('High-Contrast Decor'),
                          SizedBox(
                            height: 5,
                          ),
                          RichText(
                              text: TextSpan(
                            text: 'Anne Hepfer',
                            style:
                                TextStyle(color: Colors.black.withOpacity(0.4)),
                          )),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(25, 30, 90, 12),
                child: Text(
                  "Home Decoration \nThat you should have",
                  style: TextStyle(
                    fontSize: 25,
                    color: Color(0xff000000),
                    //fontFamily: "RobotoMono",
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                width: double.maxFinite,
                height: 295,
                //color: Colors.white,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(30),
                      child: Column(children: <Widget>[
                        Row(children: <Widget>[
                          Column(
                            children: <Widget>[
                              Container(
                                height: 130,
                                width: 130,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0xAA363636),
                                      //offset: const Offset(3.0, 4.0),
                                      blurRadius: 5.0,
                                      spreadRadius: 1.0,
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(22),
                                  image: DecorationImage(
                                    image:
                                        AssetImage('assets/A tin candle.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 13,
                              ),
                              Text('A tin candle'),
                              SizedBox(
                                height: 5,
                              ),
                              RichText(
                                  text: TextSpan(
                                text: 'Suggestion',
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.4)),
                              )),
                            ],
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Column(
                            children: <Widget>[
                              Container(
                                height: 130,
                                width: 130,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0xAA363636),
                                      //offset: const Offset(3.0, 4.0),
                                      blurRadius: 5.0,
                                      spreadRadius: 1.0,
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(22),
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/A sleek end table.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 13,
                              ),
                              Text('A sleek end table'),
                              SizedBox(
                                height: 5,
                              ),
                              RichText(
                                  text: TextSpan(
                                text: 'Suggestion',
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.4)),
                              )),
                            ],
                          ),
                        ]),
                      ]),
                    ),
                    Container(
                      padding: EdgeInsets.all(30),
                      child: Column(children: <Widget>[
                        Row(children: <Widget>[
                          Column(
                            children: <Widget>[
                              Container(
                                height: 130,
                                width: 130,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0xAA363636),
                                      //offset: const Offset(3.0, 4.0),
                                      blurRadius: 5.0,
                                      spreadRadius: 1.0,
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(22),
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/A zig-zag patterned rug.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 13,
                              ),
                              Text('A zig-zag rug'),
                              SizedBox(
                                height: 5,
                              ),
                              RichText(
                                  text: TextSpan(
                                text: 'Suggestion',
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.4)),
                              )),
                            ],
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Column(
                            children: <Widget>[
                              Container(
                                height: 130,
                                width: 130,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0xAA363636),
                                      //offset: const Offset(3.0, 4.0),
                                      blurRadius: 5.0,
                                      spreadRadius: 1.0,
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(22),
                                  image: DecorationImage(
                                    image: AssetImage('assets/H1.webp'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 13,
                              ),
                              Text('Nesting baskets'),
                              SizedBox(
                                height: 5,
                              ),
                              RichText(
                                  text: TextSpan(
                                text: 'Suggestion',
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.4)),
                              )),
                            ],
                          ),
                        ]),
                      ]),
                    ),
                    Container(
                      padding: EdgeInsets.all(30),
                      child: Column(children: <Widget>[
                        Row(children: <Widget>[
                          Column(
                            children: <Widget>[
                              Container(
                                height: 130,
                                width: 130,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0xAA363636),
                                      //offset: const Offset(3.0, 4.0),
                                      blurRadius: 5.0,
                                      spreadRadius: 1.0,
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(22),
                                  image: DecorationImage(
                                    image: AssetImage('assets/H2.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 13,
                              ),
                              Text('An accent pillow'),
                              SizedBox(
                                height: 5,
                              ),
                              RichText(
                                  text: TextSpan(
                                text: 'Suggestion',
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.4)),
                              )),
                            ],
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Column(
                            children: <Widget>[
                              Container(
                                height: 130,
                                width: 130,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0xAA363636),
                                      //offset: const Offset(3.0, 4.0),
                                      blurRadius: 5.0,
                                      spreadRadius: 1.0,
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(22),
                                  image: DecorationImage(
                                    image: AssetImage('assets/H3.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 13,
                              ),
                              Text('A stunning art print'),
                              SizedBox(
                                height: 5,
                              ),
                              RichText(
                                  text: TextSpan(
                                text: 'Suggestion',
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.4)),
                              )),
                            ],
                          ),
                        ]),
                      ]),
                    ),
                    Container(
                      padding: EdgeInsets.all(30),
                      child: Column(children: <Widget>[
                        Row(children: <Widget>[
                          Column(
                            children: <Widget>[
                              Container(
                                height: 130,
                                width: 130,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0xAA363636),
                                      //offset: const Offset(3.0, 4.0),
                                      blurRadius: 5.0,
                                      spreadRadius: 1.0,
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(22),
                                  image: DecorationImage(
                                    image: AssetImage('assets/H4.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 13,
                              ),
                              Text('wall mount shelf'),
                              SizedBox(
                                height: 5,
                              ),
                              RichText(
                                  text: TextSpan(
                                text: 'Suggestion',
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.4)),
                              )),
                            ],
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Column(
                            children: <Widget>[
                              Container(
                                height: 130,
                                width: 130,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0xAA363636),
                                      //offset: const Offset(3.0, 4.0),
                                      blurRadius: 5.0,
                                      spreadRadius: 1.0,
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(22),
                                  image: DecorationImage(
                                    image: AssetImage('assets/H5.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 13,
                              ),
                              Text('A gold plant holder'),
                              SizedBox(
                                height: 5,
                              ),
                              RichText(
                                  text: TextSpan(
                                text: 'Suggestion',
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.4)),
                              )),
                            ],
                          ),
                        ]),
                      ]),
                    ),
                    Container(
                      padding: EdgeInsets.all(30),
                      child: Column(children: <Widget>[
                        Row(children: <Widget>[
                          Column(
                            children: <Widget>[
                              Container(
                                height: 130,
                                width: 130,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0xAA363636),
                                      //offset: const Offset(3.0, 4.0),
                                      blurRadius: 5.0,
                                      spreadRadius: 1.0,
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(22),
                                  image: DecorationImage(
                                    image: AssetImage('assets/H7.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 13,
                              ),
                              Text('A lunar tapestry'),
                              SizedBox(
                                height: 5,
                              ),
                              RichText(
                                  text: TextSpan(
                                text: 'Suggestion',
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.4)),
                              )),
                            ],
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Column(
                            children: <Widget>[
                              Container(
                                height: 130,
                                width: 130,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0xAA363636),
                                      //offset: const Offset(3.0, 4.0),
                                      blurRadius: 5.0,
                                      spreadRadius: 1.0,
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(22),
                                  image: DecorationImage(
                                    image: AssetImage('assets/H8.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 13,
                              ),
                              Text('ceramic vases set'),
                              SizedBox(
                                height: 5,
                              ),
                              RichText(
                                  text: TextSpan(
                                text: 'Suggestion',
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.4)),
                              )),
                            ],
                          ),
                        ]),
                      ]),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
