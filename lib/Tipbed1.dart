import 'package:flutter/material.dart';
import 'package:roommate_app_project/Bedroomcatalog.dart';

import 'Tipbed2.dart';

class Tipbed1page extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Tipbed1State();
  }
}

class Tipbed1State extends State<Tipbed1page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Container(
          height: 350,
          width: double.maxFinite,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/BT1.jpg'), fit: BoxFit.cover)),
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Bedroompage()));
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(25, 400, 0, 12),
          child: Text(
            "Bed Size",
            style: TextStyle(
              fontSize: 40,
              color: Color(0xAA008066),
              //fontFamily: "RobotoMono",
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(200, 415, 0, 12),
          child: RichText(
              text: TextSpan(
            text: 'ขนาดเตียง',
            style:
                TextStyle(color: Colors.black.withOpacity(0.7), fontSize: 18),
          )),
        ),
        Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(25, 470, 45, 25),
              child: Text(
                'เพื่อให้พื้นที่ภายในห้องนอนนั้นลงตัว ก่อนการเลือกซื้อเตียงนอนควรพิจารณาถึงขนาดและพื้นที่ภายในห้องให้ดี เพื่อให้เราเลือกเตียงที่ตอบโจทย์ต่อการใช้งานมากที่สุด',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
        Padding(
            padding: EdgeInsets.fromLTRB(25, 710, 10, 10),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.circle,
                  size: 30,
                  color: Color(0xAA00362b),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.circle,
                  size: 20,
                  color: Color(0xAA353546),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.circle,
                  size: 20,
                  color: Color(0xAA353546),
                )
              ],
            )),
        Padding(
          padding: EdgeInsets.fromLTRB(265, 675, 10, 10),
          child: Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                color: Color(0xAA004f3f),
                shape: BoxShape.circle,
              )),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(285, 695, 10, 10),
          child: Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              )),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(300, 708, 10, 10),
          child: IconButton(
            icon: Icon(
              Icons.arrow_forward_ios,
              size: 35,
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Tipbed2page()));
            },
          ),
        )
      ],
    ));
  }
}
