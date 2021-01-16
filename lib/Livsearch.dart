import 'package:flutter/material.dart';

class Livsearch extends StatelessWidget {
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
                    image: AssetImage('assets/imgSearch10.jpg'),
                    fit: BoxFit.cover),
              ),
              child: Padding(
                padding: EdgeInsets.fromLTRB(20, 170, 10, 0),
                child: Text(
                  '   Livingroom Design   ',
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
                    image: AssetImage('assets/imgSearch1.jpg'),
                    fit: BoxFit.cover),
              ),
              child: Padding(
                padding: EdgeInsets.fromLTRB(20, 170, 10, 0),
                child: Text(
                  '   Livingroom Design   ',
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
                    image: AssetImage('assets/SL1.jpg'), fit: BoxFit.cover),
              ),
              child: Padding(
                padding: EdgeInsets.fromLTRB(20, 170, 10, 0),
                child: Text(
                  '   Livingroom Design   ',
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
                    image: AssetImage('assets/SL2.jpg'), fit: BoxFit.cover),
              ),
              child: Padding(
                padding: EdgeInsets.fromLTRB(20, 170, 10, 0),
                child: Text(
                  '   Livingroom Design   ',
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
                    image: AssetImage('assets/SL3.jpg'), fit: BoxFit.cover),
              ),
              child: Padding(
                padding: EdgeInsets.fromLTRB(20, 170, 10, 0),
                child: Text(
                  '   Livingroom Design   ',
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
