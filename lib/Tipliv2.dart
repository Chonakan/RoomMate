import 'package:flutter/material.dart';

import 'package:roommate_app_project/Tipliv1.dart';

import 'Tipliv3.dart';

class Tipliv2page extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Tipliv2State();
  }
}

class Tipliv2State extends State<Tipliv2page> {
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
                  image: AssetImage('assets/LT2.jpg'), fit: BoxFit.cover)),
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Tipliv1page()));
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(25, 400, 0, 12),
          child: Text(
            "Contemporary Style",
            style: TextStyle(
              fontSize: 30,
              color: Color(0xAA21086e),
              //fontFamily: "RobotoMono",
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(25, 460, 45, 25),
              child: Text(
                'กระจกบานกว้างซึ่งได้มีการตกแต่งด้วยผ้าม่านลอน ในลักษณะการจับจีบผ้าแบบที่ล้ำสมัย ซึ่งเป็นเอกลักษณ์ของ  Infinity Design ผ้าม่าน เพื่อให้สอดคล้องกับความทันสมัยในปัจจุบันซึ่งการตกแต่งภายในห้องนั่งเล่นนี้ ได้นำความโมเดิร์นกับความคลาสสิคเข้ามาอยู่ด้วยกัน ไม่ว่าจะเป็นในส่วนของผ้าม่าน โทนสี เฟอร์นิเจอร์และของตกแต่ง',
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
                  size: 20,
                  color: Color(0xAA353546),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.circle,
                  size: 30,
                  color: Color(0xAA21086e),
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
                color: Color(0xAA21086e),
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
                  MaterialPageRoute(builder: (context) => Tipliv3page()));
            },
          ),
        )
      ],
    ));
  }
}
