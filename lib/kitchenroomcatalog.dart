import 'package:flutter/material.dart';
import 'package:roommate_app_project/FinalHome.dart';
import 'package:roommate_app_project/Tipbed1.dart';

import 'Tipliv1.dart';

class Kitchenpage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Kitchenstate();
  }
}

class Kitchenstate extends State<Kitchenpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => FinalHomepage()))),
        title: Text(
          "Kitchenroom Catalog",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(0, 200, 0, 0),
                child: Container(
                  height: 760,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xAA353546),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(45),
                      topRight: Radius.circular(45),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(45),
                child: Container(
                  height: 230,
                  width: 158,
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
              Padding(
                padding: EdgeInsets.fromLTRB(220, 100, 10, 10),
                child: Text(
                  'Kitchenroom',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(230, 130, 10, 10),
                child: Text(
                  'Catalog',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(50, 320, 10, 10),
                child: Text(
                  'Kitchenroom Reference',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 350, 10, 10),
                child: Container(
                  width: double.maxFinite,
                  height: 285,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 150,
                              width: 245,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0xAA363636),
                                    blurRadius: 4.0,
                                    spreadRadius: 2.0,
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(22),
                                image: DecorationImage(
                                  image: AssetImage('assets/K1.jpg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 13,
                            ),
                            Row(
                              children: <Widget>[
                                Icon(
                                  Icons.favorite,
                                  color: Colors.redAccent,
                                ),
                                Icon(
                                  Icons.favorite,
                                  color: Colors.redAccent,
                                ),
                                Icon(
                                  Icons.favorite,
                                  color: Colors.redAccent,
                                ),
                                Icon(
                                  Icons.favorite,
                                  color: Colors.redAccent,
                                ),
                                Icon(
                                  Icons.favorite,
                                  color: Colors.redAccent,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5.5,
                            ),
                            Text(
                              'ออกแนวญี่ปุ่นแบบมินิมอลๆ',
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(
                              height: 5.5,
                            ),
                            RichText(
                                text: TextSpan(
                              text: 'Post by NGGODMAN',
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.4)),
                            )),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 150,
                              width: 245,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0xAA363636),
                                    blurRadius: 4.0,
                                    spreadRadius: 2.0,
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(22),
                                image: DecorationImage(
                                  image: AssetImage('assets/K2.jpg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 13,
                            ),
                            Row(
                              children: <Widget>[
                                Icon(
                                  Icons.favorite,
                                  color: Colors.redAccent,
                                ),
                                Icon(
                                  Icons.favorite,
                                  color: Colors.redAccent,
                                ),
                                Icon(
                                  Icons.favorite,
                                  color: Colors.redAccent,
                                ),
                                Icon(
                                  Icons.favorite,
                                  color: Colors.redAccent,
                                ),
                                Icon(
                                  Icons.favorite,
                                  color: Colors.redAccent,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5.5,
                            ),
                            Text(
                              'หนูชอบสีฟ้าค่ะ ทำออกมาแล้วสวยมาก',
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(
                              height: 5.5,
                            ),
                            RichText(
                                text: TextSpan(
                              text: 'Post by jyxjay',
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.4)),
                            )),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 150,
                              width: 245,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0xAA363636),
                                    blurRadius: 4.0,
                                    spreadRadius: 2.0,
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(22),
                                image: DecorationImage(
                                  image: AssetImage('assets/K3.jpg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 13,
                            ),
                            Row(
                              children: <Widget>[
                                Icon(
                                  Icons.favorite,
                                  color: Colors.redAccent,
                                ),
                                Icon(
                                  Icons.favorite,
                                  color: Colors.redAccent,
                                ),
                                Icon(
                                  Icons.favorite,
                                  color: Colors.black54,
                                ),
                                Icon(
                                  Icons.favorite,
                                  color: Colors.black54,
                                ),
                                Icon(
                                  Icons.favorite,
                                  color: Colors.black54,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5.5,
                            ),
                            Text(
                              'เลือกสีดำมาตัดกับสีขาวก็ดูสวยหรูดี',
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(
                              height: 5.5,
                            ),
                            RichText(
                                text: TextSpan(
                              text: 'Post by Dark2J',
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.4)),
                            )),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 150,
                              width: 245,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0xAA363636),
                                    blurRadius: 4.0,
                                    spreadRadius: 2.0,
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(22),
                                image: DecorationImage(
                                  image: AssetImage('assets/K4.jpg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 13,
                            ),
                            Row(
                              children: <Widget>[
                                Icon(
                                  Icons.favorite,
                                  color: Colors.redAccent,
                                ),
                                Icon(
                                  Icons.favorite,
                                  color: Colors.redAccent,
                                ),
                                Icon(
                                  Icons.favorite,
                                  color: Colors.redAccent,
                                ),
                                Icon(
                                  Icons.favorite,
                                  color: Colors.redAccent,
                                ),
                                Icon(
                                  Icons.favorite,
                                  color: Colors.redAccent,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5.5,
                            ),
                            Text(
                              'ลองทำโทนสีนี้ดูดูหรูหรา',
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(
                              height: 5.5,
                            ),
                            RichText(
                                text: TextSpan(
                              text: 'Post by เทคคลองเตยซอย 9',
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.4)),
                            )),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 150,
                              width: 245,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0xAA363636),
                                    blurRadius: 4.0,
                                    spreadRadius: 2.0,
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(22),
                                image: DecorationImage(
                                  image: AssetImage('assets/K5.jpg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 13,
                            ),
                            Row(
                              children: <Widget>[
                                Icon(
                                  Icons.favorite,
                                  color: Colors.redAccent,
                                ),
                                Icon(
                                  Icons.favorite,
                                  color: Colors.redAccent,
                                ),
                                Icon(
                                  Icons.favorite,
                                  color: Colors.redAccent,
                                ),
                                Icon(
                                  Icons.favorite,
                                  color: Colors.black54,
                                ),
                                Icon(
                                  Icons.favorite,
                                  color: Colors.black54,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5.5,
                            ),
                            Text(
                              'รีโนเวทห้องครัวเป็นสีขาวก็สวยอีกแบบ',
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(
                              height: 5.5,
                            ),
                            RichText(
                                text: TextSpan(
                              text: 'Post by Punzombie2',
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.4)),
                            )),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 650, 10, 10),
                child: Container(
                  width: double.maxFinite,
                  height: 285,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 150,
                              width: 245,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0xAA363636),
                                    blurRadius: 4.0,
                                    spreadRadius: 2.0,
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(22),
                                image: DecorationImage(
                                  image: AssetImage('assets/K6.jpg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 13,
                            ),
                            Row(
                              children: <Widget>[
                                Icon(
                                  Icons.favorite,
                                  color: Colors.redAccent,
                                ),
                                Icon(
                                  Icons.favorite,
                                  color: Colors.redAccent,
                                ),
                                Icon(
                                  Icons.favorite,
                                  color: Colors.redAccent,
                                ),
                                Icon(
                                  Icons.favorite,
                                  color: Colors.redAccent,
                                ),
                                Icon(
                                  Icons.favorite,
                                  color: Colors.black54,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5.5,
                            ),
                            Text(
                              'ไปทำตามกันดูครับมันสวยมากกก',
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(
                              height: 5.5,
                            ),
                            RichText(
                                text: TextSpan(
                              text: 'Post by Chonakan Chumtap',
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.4)),
                            )),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 150,
                              width: 245,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0xAA363636),
                                    blurRadius: 4.0,
                                    spreadRadius: 2.0,
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(22),
                                image: DecorationImage(
                                  image: AssetImage('assets/K7.jpg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 13,
                            ),
                            Row(
                              children: <Widget>[
                                Icon(
                                  Icons.favorite,
                                  color: Colors.redAccent,
                                ),
                                Icon(
                                  Icons.favorite,
                                  color: Colors.redAccent,
                                ),
                                Icon(
                                  Icons.favorite,
                                  color: Colors.redAccent,
                                ),
                                Icon(
                                  Icons.favorite,
                                  color: Colors.redAccent,
                                ),
                                Icon(
                                  Icons.favorite,
                                  color: Colors.redAccent,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5.5,
                            ),
                            Text(
                              'วันนี้มาเสนอแนววินเทจผสมแนวญี่ปุ่นจ้า',
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(
                              height: 5.5,
                            ),
                            RichText(
                                text: TextSpan(
                              text: 'Post by TonBoon',
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.4)),
                            )),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 150,
                              width: 245,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0xAA363636),
                                    blurRadius: 4.0,
                                    spreadRadius: 2.0,
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(22),
                                image: DecorationImage(
                                  image: AssetImage('assets/K8.jpg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 13,
                            ),
                            Row(
                              children: <Widget>[
                                Icon(
                                  Icons.favorite,
                                  color: Colors.redAccent,
                                ),
                                Icon(
                                  Icons.favorite,
                                  color: Colors.redAccent,
                                ),
                                Icon(
                                  Icons.favorite,
                                  color: Colors.black54,
                                ),
                                Icon(
                                  Icons.favorite,
                                  color: Colors.black54,
                                ),
                                Icon(
                                  Icons.favorite,
                                  color: Colors.black54,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5.5,
                            ),
                            Text(
                              'งบทั้งหมดนี่ไม่ถึง 100k แต่ดูดีมากกก',
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(
                              height: 5.5,
                            ),
                            RichText(
                                text: TextSpan(
                              text: 'Post by ดอมบ้ามุส',
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.4)),
                            )),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 150,
                              width: 245,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0xAA363636),
                                    blurRadius: 4.0,
                                    spreadRadius: 2.0,
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(22),
                                image: DecorationImage(
                                  image: AssetImage('assets/K9.jpg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 13,
                            ),
                            Row(
                              children: <Widget>[
                                Icon(
                                  Icons.favorite,
                                  color: Colors.redAccent,
                                ),
                                Icon(
                                  Icons.favorite,
                                  color: Colors.redAccent,
                                ),
                                Icon(
                                  Icons.favorite,
                                  color: Colors.redAccent,
                                ),
                                Icon(
                                  Icons.favorite,
                                  color: Colors.redAccent,
                                ),
                                Icon(
                                  Icons.favorite,
                                  color: Colors.redAccent,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5.5,
                            ),
                            Text(
                              'เก้าอี้สีเด่นช่วยให้ดูดีขึ้นได้นะ',
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(
                              height: 5.5,
                            ),
                            RichText(
                                text: TextSpan(
                              text: 'Post by สาริศเอง',
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.4)),
                            )),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 150,
                              width: 245,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0xAA363636),
                                    blurRadius: 4.0,
                                    spreadRadius: 2.0,
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(22),
                                image: DecorationImage(
                                  image: AssetImage('assets/K10.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 13,
                            ),
                            Row(
                              children: <Widget>[
                                Icon(
                                  Icons.favorite,
                                  color: Colors.redAccent,
                                ),
                                Icon(
                                  Icons.favorite,
                                  color: Colors.redAccent,
                                ),
                                Icon(
                                  Icons.favorite,
                                  color: Colors.redAccent,
                                ),
                                Icon(
                                  Icons.favorite,
                                  color: Colors.black54,
                                ),
                                Icon(
                                  Icons.favorite,
                                  color: Colors.black54,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5.5,
                            ),
                            Text(
                              'น่ารักและสวยเหมือนคนโพสค่ะ',
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(
                              height: 5.5,
                            ),
                            RichText(
                                text: TextSpan(
                              text: 'Post by Primaholic',
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.4)),
                            )),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
