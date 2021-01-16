import 'package:flutter/material.dart';

import 'package:roommate_app_project/Livingroomcatalog.dart';

import 'Tipliv2.dart';

class Tipliv3page extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Tipliv3State();
  }
}

class Tipliv3State extends State<Tipliv3page> {
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
                  image: AssetImage('assets/LT3.jpg'), fit: BoxFit.cover)),
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Tipliv2page()));
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(25, 400, 0, 12),
          child: Text(
            "Modern Style",
            style: TextStyle(
              fontSize: 40,
              color: Colors.redAccent,
              //fontFamily: "RobotoMono",
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(25, 470, 45, 25),
              child: Text(
                'ตกแต่งด้วยผ้าม่านโทนสีแดง ที่ทำให้ภายในห้องดูมีสีสัน ซึ่งในส่วนของเฟอร์นิเจอร์จะเน้นการผสมผสาน และนำมาตกแต่งเพียงไม่กี่ชิ้น โดยเน้นการใช้งานเป็นหลัก ไม่ว่าจะเป็นในส่วนของโซฟาหนังที่มีความเงางามให้อารมณ์ความหรูหราของหนัง และ โต๊ะกระจกทรงเหลี่ยมสไตล์โมเดิร์น',
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
                  size: 20,
                  color: Color(0xAA353546),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.circle,
                  size: 30,
                  color: Colors.redAccent,
                )
              ],
            )),
        Padding(
          padding: EdgeInsets.fromLTRB(265, 675, 10, 10),
          child: Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                color: Colors.redAccent,
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
                  MaterialPageRoute(builder: (context) => Livingroompage()));
            },
          ),
        )
      ],
    ));
  }
}
