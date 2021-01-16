import 'package:flutter/material.dart';
import 'Tipbed1.dart';
import 'Tipbed3.dart';

class Tipbed2page extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Tipbed2State();
  }
}

class Tipbed2State extends State<Tipbed2page> {
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
                  image: AssetImage('assets/BT2.jpg'), fit: BoxFit.cover)),
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Tipbed1page()));
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(25, 400, 0, 12),
          child: Text(
            "Furniture",
            style: TextStyle(
              fontSize: 40,
              color: Color(0xAA968a00),
              //fontFamily: "RobotoMono",
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(200, 415, 0, 12),
          child: RichText(
              text: TextSpan(
            text: 'เลือกให้คุ้มค่า',
            style:
                TextStyle(color: Colors.black.withOpacity(0.7), fontSize: 18),
          )),
        ),
        Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(25, 470, 45, 25),
              child: Text(
                'หากห้องนอนมีพื้นที่จำกัดแต่เลือกใช้เฟอร์นิเจอร์ที่มีขนาดใหญ่ อาจส่งผลให้บรรยากาศภายในห้องดูอึดอัดได้ ฉะนั้นควรเลือกขนาดของเฟอร์นิเจอร์ให้เหมาะสม หรืออาจเลือกใช้เฟอร์นิเจอร์มัลติฟังก์ชั่น  เพราะนอกจากจะใช้งานได้อย่างคุ้มค่าแล้ว ยังช่วยประหยัดพื้นที่ไปในตัวได้อีกด้วย',
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
                  color: Color(0xAA968a00),
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
                color: Color(0xAA968a00),
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
                  MaterialPageRoute(builder: (context) => Tipbed3page()));
            },
          ),
        )
      ],
    ));
  }
}
