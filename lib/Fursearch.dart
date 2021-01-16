import 'package:flutter/material.dart';

class Fursearch extends StatelessWidget {
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
                    image: AssetImage('assets/H4.jpg'), fit: BoxFit.cover),
              ),
              child: Padding(
                padding: EdgeInsets.fromLTRB(20, 170, 10, 0),
                child: Text(
                  '   Furniture   ',
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
                    image: AssetImage('assets/FS3.jpg'), fit: BoxFit.cover),
              ),
              child: Padding(
                padding: EdgeInsets.fromLTRB(20, 170, 10, 0),
                child: Text(
                  '   Furniture   ',
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
                    image: AssetImage('assets/FS5.jpg'), fit: BoxFit.cover),
              ),
              child: Padding(
                padding: EdgeInsets.fromLTRB(20, 170, 10, 0),
                child: Text(
                  '   Furniture   ',
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
                    image: AssetImage('assets/FS1.jpg'), fit: BoxFit.cover),
              ),
              child: Padding(
                padding: EdgeInsets.fromLTRB(20, 170, 10, 0),
                child: Text(
                  '   Furniture   ',
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
                    image: AssetImage('assets/FS4.jpg'), fit: BoxFit.cover),
              ),
              child: Padding(
                padding: EdgeInsets.fromLTRB(20, 170, 10, 0),
                child: Text(
                  '   Furniture   ',
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
