import 'package:flutter/material.dart';

import 'package:roommate_app_project/Livingroomcatalog.dart';

import 'Tipliv2.dart';

class Tipliv1page extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Tipliv1State();
  }
}

class Tipliv1State extends State<Tipliv1page> {
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
                  image: AssetImage('assets/LT1.jpg'), fit: BoxFit.cover)),
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Livingroompage()));
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(25, 400, 0, 12),
          child: Text(
            "Modern Japanese Style",
            style: TextStyle(
              fontSize: 30,
              color: Colors.brown,
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
                'ห้องนั่งเล่นที่เชื่อมต่อกับโซนรับประทานอาหาร ที่จัดสัดส่วนพื้นที่การใช้งานได้อย่างลงตัว ซึ่งได้ตกแต่งในสไตล์ Modern Japanese โดยเน้นโทนสีอ่อนให้บ้านดูสว่าง รู้สึกปลอดโปร่ง มาพร้อมเฟอร์นิเจอร์ไม้ที่ให้ความอบอุ่น และโซฟาหนังโทนสีฟ้าสดใส ที่ผสมผสานกันได้อย่างลงตัว',
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
                  color: Colors.brown,
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
                color: Colors.brown,
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
                  MaterialPageRoute(builder: (context) => Tipliv2page()));
            },
          ),
        )
      ],
    ));
  }
}
