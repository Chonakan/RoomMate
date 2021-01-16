import 'package:flutter/material.dart';

class Bedsearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
          child: Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                image: DecorationImage(
                    image: AssetImage('assets/BT1.jpg'), fit: BoxFit.cover),
              ),
              child: Padding(
                padding: EdgeInsets.fromLTRB(20, 170, 10, 0),
                child: Text(
                  '   Bedroom Design   ',
                  style: TextStyle(
                      fontSize: 15,
                      backgroundColor: Color(0xAAFD7778),
                      fontWeight: FontWeight.bold),
                ),
              )),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
          child: Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                image: DecorationImage(
                    image: AssetImage('assets/BS2.jpg'), fit: BoxFit.cover),
              ),
              child: Padding(
                padding: EdgeInsets.fromLTRB(20, 170, 10, 0),
                child: Text(
                  '   Bedroom Design   ',
                  style: TextStyle(
                      fontSize: 15,
                      backgroundColor: Color(0xAAFD7778),
                      fontWeight: FontWeight.bold),
                ),
              )),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
          child: Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                image: DecorationImage(
                    image: AssetImage('assets/BS3.jpg'), fit: BoxFit.cover),
              ),
              child: Padding(
                padding: EdgeInsets.fromLTRB(20, 170, 10, 0),
                child: Text(
                  '   Bedroom Design   ',
                  style: TextStyle(
                      fontSize: 15,
                      backgroundColor: Color(0xAAFD7778),
                      fontWeight: FontWeight.bold),
                ),
              )),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
          child: Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                image: DecorationImage(
                    image: AssetImage('assets/BS4.jpg'), fit: BoxFit.cover),
              ),
              child: Padding(
                padding: EdgeInsets.fromLTRB(20, 170, 10, 0),
                child: Text(
                  '   Bedroom Design   ',
                  style: TextStyle(
                      fontSize: 15,
                      backgroundColor: Color(0xAAFD7778),
                      fontWeight: FontWeight.bold),
                ),
              )),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
          child: Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                image: DecorationImage(
                    image: AssetImage('assets/BS5.jpg'), fit: BoxFit.cover),
              ),
              child: Padding(
                padding: EdgeInsets.fromLTRB(20, 170, 10, 0),
                child: Text(
                  '   Bedroom Design   ',
                  style: TextStyle(
                      fontSize: 15,
                      backgroundColor: Color(0xAAFD7778),
                      fontWeight: FontWeight.bold),
                ),
              )),
        ),
      ],
    );
  }
}
